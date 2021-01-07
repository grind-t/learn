#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include "../lab3/parser.c"
#include "../lab4/strhashtable.c"

// Максимальное количество мнемоник.
#define MNEMONICS_TABLE_SIZE 32
// Размер слова в байтах.
#define WORD_SIZE 3

typedef struct Directive 
{
    // Обработчик директивы.
    void (*handler)(const char operand[COMMENT_INDEX]);
} Directive;

typedef struct MachineCommand 
{
    // Машинный код.
    uint code;
    // Размер машинной команды в байтах.
    uint size;
} MachineCommand;

typedef struct Command 
{
    // Тип команды (машинная команда или директива).
    uint type;
    union
    {
        Directive directive;
        MachineCommand machineCommand;
    };
} Command;

// Обработчик директивы begin (установка адреса загрузки и счетчика размещения).
void handleBegin(const char* operand);
// Обработчик директивы end (установка точки входа и размера программы).
void handleEnd(const char* operand);
// Обработчик директивы db (выделение необходимого кол-ва байтов для константы).
void handleDB(const char* operand);
// Обработичк директивы dw (выделение слова для константы).
void handleDW(const char* operand);
// Обработчик директивы rb (выделение заданного количества байтов).
void handleRB(const char* operand);
// Обработчик директивы rw (выдленение заданного количества слов).
void handleRW(const char* operand);

// Добавляет метку в таблицу имен и возвращает индекс вставки.
OptionalUint addLabelToNamesTable(const char* label);
// Добавляет операнд в таблицу имен и возвращает индекс вставки.
OptionalUint addOperandToNamesTable(const char* operand);
// Возвращает машинную команду для директивы db.
uint dbMachineCommand(const char* operand);
// Возвращает машинную команду.
uint machineCommand(uint KOP, int X, uint address);
// Возвращет истину, если операнд не является литералом.
bool isName(const char* operand);
// Удаляет метод адресации из операнда и возвращает его.
char popAddressingMode(char* operand);
// Преобразует машинную команду в строку.
void mcToStr(char* dst, uint mc, uint mcSize);

// Устанавливает флаг неудачной трансляции ассемблерной программы, и печатает сообщение об ошибке.
void error(const char* format, ...);
// Аналогично error + печатает текущей номер строки разбора ассемблерной программы.
void lineError(const char* format, ...);

// Распечатывает таблицу имен.
void printNamesTable();

// Таблица машинных кодов (мнемоник).
const static StrHashTable mnemonics = 
{
    .params = (HashTableParams){0x985F8917, 32, 5},
    .size = MNEMONICS_TABLE_SIZE,
    .values = (StrHashTableItem[MNEMONICS_TABLE_SIZE])
    {
        {"not", &(Command){0, .machineCommand = {0x10, 3}}},
        {"", NULL},
        {"db", &(Command){1, .directive = handleDB}},
        {"stch", &(Command){0, .machineCommand = {0x11, 3}}},
        {"wd", &(Command){0, .machineCommand = {0x12, 3}}},
        {"rd", &(Command){0, .machineCommand = {0x13, 3}}},
        {"", NULL},
        {"rsub", &(Command){0, .machineCommand = {0x14, 3}}},
        {"rw", &(Command){1, .directive = handleRW}},
        {"jeq", &(Command){0, .machineCommand = {0x15, 3}}},
        {"and", &(Command){0, .machineCommand = {0x16, 3}}},
        {"td", &(Command){0, .machineCommand = {0x17, 3}}},
        {"mul", &(Command){0, .machineCommand = {0x18, 3}}},
        {"rb", &(Command){1, .directive = handleRB}},
        {"jsub", &(Command){0, .machineCommand = {0x19, 3}}},
        {"", NULL},
        {"jlt", &(Command){0, .machineCommand = {0x1A, 3}}},
        {"lda", &(Command){0, .machineCommand = {0x1B, 3}}},
        {"sub", &(Command){0, .machineCommand = {0x1C, 3}}},
        {"add", &(Command){0, .machineCommand = {0x1D, 3}}},
        {"jgt", &(Command){0, .machineCommand = {0x1E, 3}}},
        {"sta", &(Command){0, .machineCommand = {0x1F, 3}}},
        {"end", &(Command){1, .directive = handleEnd}},
        {"jmp", &(Command){0, .machineCommand = {0x20, 3}}},
        {"begin", &(Command){1, .directive = handleBegin}},
        {"comp", &(Command){0, .machineCommand = {0x21, 3}}},
        {"or", &(Command){0, .machineCommand = {0x22, 3}}},
        {"ldx", &(Command){0, .machineCommand = {0x23, 3}}},
        {"div", &(Command){0, .machineCommand = {0x24, 3}}},
        {"dw", &(Command){1, .directive = handleDW}},
        {"ldch", &(Command){0, .machineCommand = {0x25, 3}}},
        {"stx", &(Command){0, .machineCommand = {0x26, 3}}}
    }
};
// Таблица имен.
static StrHashTable names = 
{
    .params = (HashTableParams){0x9E3779B9, 32, 2},
    .size = 4
};
// Счетчик размещения.
static uint placementCounter = 0;
// Текущая строка разбора ассемблерной программы.
static uint currentLine = 0;
// Адрес начала загрузки.
static uint loadAddress = 0;
// Размер программы.
static uint programSize = 0;
// Точка входа.
static uint entryAdress = 0;
// Флаг окончания чтения ассемблерной программы.
static bool end = false;
// Результат трансляции ассемблерной программы.
static bool fail = false;

int main()
{
    names.values = (StrHashTableItem*)calloc(names.size, sizeof(StrHashTableItem));
    FILE* fp; // Файл с исходной ассемблерной программой.
    FILE* listing; // Промежуточный файл с листингом программы для второго прохода.
    fp = fopen("factorial.txt", "r");
    listing = fopen("listing.txt", "w");
    str buff;

    // Первый проход.
    while (fgets(buff.chars, MAX_STR_SIZE, (FILE*)fp) && !end)
    {
        currentLine++;
        // Добавляем исходную строку ассемблера в листинг.
        fputs(buff.chars, listing);
        if (buff.chars[strlen(buff.chars) - 1] != '\n') fputc('\n', listing);
        // Разбираем исходную ассемблерную строку.
        Asm assembly = parse(buff);
        // Добавляем метку в таблицу имен.
        addLabelToNamesTable(assembly.label);
        // Если оператора нет, то помещаем в листинг сч. размещения и тип команды -1.
        if (assembly.operator[0] == '\0') 
        {
            fprintf(listing, "%u -1\n", placementCounter);
            continue;
        }
        // Ищем оператор в таблице мнемоник.
        OptionalUint mnemonicIndex = get(&mnemonics, (str*)assembly.operator);
        // Если мнемоника не найдена.
        if (mnemonicIndex.null) 
        {
            // Сообщаем об ошибке.
            lineError("Несуществующая мнемоника %s.\n", assembly.operator);
            // Добавляем сч. размещения в листинг и тип команды -1.
            fprintf(listing, "%u -1\n", placementCounter);
            continue;
        }
        // Получаем команду из таблицу мнемоник.
        Command command = *(Command*)mnemonics.values[mnemonicIndex.value].value;
        // Если это директива.
        if (command.type == 1) 
        {
            // Обрабатываем директиву.
            command.directive.handler(assembly.operand);
            // Помещаем в листинг сч. размещения, тип команды 1.
            fprintf(listing, "%u 1\n", placementCounter);
        }
        else 
        {
            // Получаем метод адресации.
            int X = 0;
            char mode = popAddressingMode(assembly.operand);
            if (mode == 'X') X = 1;
            else if (mode != '\0') lineError("Метод адресации не распознан.\n");
            // Добавляем операнд в таблицу имен.
            OptionalUint i = addOperandToNamesTable(assembly.operand);
            if (i.null) lineError("Недопустимый операнд: %s.\n", assembly.operand);
            // Увеличиваем сч. размещения на размер машинной команды.
            placementCounter += command.machineCommand.size; 
            // Помещаем в листинг сч. размещения, тип команды 0, КОП и X.
            fprintf(listing, "%u 0 %u %d\n", placementCounter, command.machineCommand.code, X);
        }
    }
    fclose(fp);
    fclose(listing);

    // Проверка наличия неопределенных имен в таблице имен.
    for (uint i = 0; i < names.size; i++) 
        if (names.values[i].key.chars[0] != '\0' && ((OptionalUint*)names.values[i].value)->null)
            error("Имя %s не определено.\n", names.values[i].key.chars);
    // Если в процессе 1 прохода были ошибки -> выходим.
    if (fail) 
    {
        printf("\nТрансляция завершилась с ошибками.\n");
        return 0;
    }

    // Второй проход.
    currentLine = 0;
    end = false;
    placementCounter = loadAddress;
    listing = fopen("listing.txt", "r");
    fp = fopen("objcode.txt", "w");
    fprintf(fp, ":02%04X02%04XXX\r\n", loadAddress, programSize);
    while (fgets(buff.chars, MAX_STR_SIZE, (FILE*)listing) && !end)
    {
        currentLine++;
        // Разбираем ассемблерную строку.
        Asm assembly = parse(buff); 
        // Получаем след сч. размещения и тип команды из листинга.
        int commandType = 0; 
        uint nextPC = 0;
        fscanf(listing, "%u %d", &nextPC, &commandType);
        // Если машинная команда.
        if (commandType == 0) 
        {
            // Получаем КОП и X из листинга.
            uint KOP = 0;
            int X = 0;
            fscanf(listing, "%u %d", &KOP, &X);
            // Получаем адрес операнда в таблице имен.
            uint address = 0;
            if (assembly.operand[0] != '\0') 
            {
                popAddressingMode(assembly.operand); // Удаляем признак адресации.
                OptionalUint i = get(&names, (str*)assembly.operand);
                address = (*(OptionalUint*)names.values[i.value].value).value;
            }
            // Получаем машинную команду.
            uint mc = machineCommand(KOP, X, address);
            uint mcSize = nextPC - placementCounter;  
            char mcStr[0xFF*2 + 1];
            mcToStr(mcStr, mc, mcSize);
            // Распечатываем листинг.
            trimNewLine(buff.chars);
            printf("(Строка %u) Счетчик размещения: %04X Программа: %s КОП: %02X X: %d Адрес: %04X Машинная команда: %s\n", 
                currentLine, placementCounter, buff.chars, KOP, X, address, mcStr);
            // Генерация объектного кода.
            fprintf(fp, ":%02X%04X00%sXX\r\n", mcSize, placementCounter, mcStr);
        }
        // Если директива.
        else if (commandType == 1) 
        {
            if (assembly.operator[0] == 'd') 
            {
                uint mc = 0;
                int mcSize = nextPC - placementCounter;  
                char mcStr[0xFF*2 + 1];
                if (assembly.operator[1] == 'b')
                    mc = dbMachineCommand(assembly.operand);
                else 
                    mc = (uint)strtoul(assembly.operand, NULL, 0) & 0xFFFFFFU;
                mcToStr(mcStr, mc, mcSize);
                // Распечатываем листинг.
                trimNewLine(buff.chars);
                printf("(Строка %u) Счетчик размещения: %04X Программа: %s Машинная команда: %s\n", 
                    currentLine, placementCounter, buff.chars, mcStr);
                // Генерация объектного кода.
                fprintf(fp, ":%02X%04X00%sXX\r\n", mcSize, placementCounter, mcStr);
            }   
            else if (assembly.operator[0] == 'r') 
            {
                uint mc = 0;
                int mcSize = nextPC - placementCounter;  
                char mcStr[0xFF*2 + 1];
                // Распечатываем часть листинга.
                trimNewLine(buff.chars);
                printf("(Строка %u) Счетчик размещения: %04X Программа: %s Машинная команда: ", 
                    currentLine, placementCounter, buff.chars);
                // Распечатка машинной команды и генерция объектного кода для больших resb и resw.
                while (mcSize > 0xFF) 
                {
                    sprintf(mcStr, "%0510X", 0);
                    printf("%s", mcStr);
                    fprintf(fp, ":FF%04X00%sXX\r\n", placementCounter, mcStr);
                    mcSize -= 0xFF;
                }
                // Остальная распечатка и генерация.
                mcToStr(mcStr, mc, mcSize);
                printf("%s\n", mcStr);
                fprintf(fp, ":%02X%04X00%sXX\r\n", mcSize, placementCounter, mcStr);
            }
            else 
            {
                if (strcmp(assembly.operator, "end") == 0) end = true;
                printf("(Строка %u) Счетчик размещения: %04X Программа: %s", currentLine, placementCounter, buff.chars);
            }
        }
        else 
            printf("(Строка %u) Счетчик размещения: %04X Программа: %s", currentLine, placementCounter, buff.chars);
        // Пропускаем символ '\n' и устанавливаем след. значение сч. размещения.
        fgetc(listing);
        placementCounter = nextPC;
    }
    fprintf(fp, ":00%04X01XX\r\n", entryAdress);
    
    printf("\nТрансляция прошла успешно.\n");
    printf("Таблица имен:\n");
    printNamesTable();
    printf("Адрес начала загрузки: %04Xh\n", loadAddress);
    printf("Размер программы: %Xh\n", programSize);
    printf("Точка входа: %04Xh\n", entryAdress);
    fclose(listing);  
    fclose(fp);  
    return 0;
}

void handleBegin(const char* operand) 
{
    loadAddress = placementCounter = (uint)strtoul(operand, NULL, 0);
}

void handleEnd(const char* operand) 
{
    end = true;
    OptionalUint i = addOperandToNamesTable(operand);
    if (i.null)
        entryAdress = (uint)strtoul(operand, NULL, 0);
    else
    {
        OptionalUint* address = (OptionalUint*)names.values[i.value].value;
        if (!address->null)
            entryAdress = address->value;
    }   
    programSize = placementCounter - loadAddress;
}

void handleDB(const char* operand) 
{
    if (operand[0] == '\'')
    {
        uint strLength = strlen(operand);
        if (operand[strLength - 1] == '\'') 
            placementCounter += strLength - 2;
        else
            lineError("Не найдена закрывающая кавычка в операнде %s.\n", operand);
    }
    else 
    {
        uint ui = (uint)strtoul(operand, NULL, 0);
        while (ui != 0) 
        {
            ui >>= 8;
            placementCounter++;
        }
    }
}

void handleDW(const char* operand) 
{
    placementCounter += WORD_SIZE;
}

void handleRB(const char* operand)
{
    placementCounter += (uint)strtoul(operand, NULL, 0);
}

void handleRW(const char* operand) 
{
    placementCounter += WORD_SIZE * (uint)strtoul(operand, NULL, 0);
}

OptionalUint addLabelToNamesTable(const char* label) 
{
    if (label[0] == '\0') return (OptionalUint){true, 0};
    OptionalUint labelIndex = get(&names, (str*)label);
    if (labelIndex.null) 
    {
        OptionalUint* labelAdress = (OptionalUint*)malloc(sizeof(OptionalUint));
        labelAdress->null = false;
        labelAdress->value = placementCounter;
        return add(&names, (str*)label, labelAdress);
    }
    else 
    {
        OptionalUint* labelAdress = (OptionalUint*)names.values[labelIndex.value].value;
        if (!labelAdress->null) 
            lineError("Повторение метки %s.\n", label);
        labelAdress->null = false;
        labelAdress->value = placementCounter;
        return labelIndex;
    }
}

OptionalUint addOperandToNamesTable(const char* operand) 
{
    if (!isName(operand)) return (OptionalUint){true, 0};
    OptionalUint i = get(&names, (str*)operand);
    if (!i.null) return i;
    OptionalUint* address = (OptionalUint*)malloc(sizeof(OptionalUint));
    address->null = true;
    address->value = 0;
    return add(&names, (str*)operand, address);
}

uint dbMachineCommand(const char* operand) 
{
    uint mc = 0;
    // Если операнд строка.
    if (operand[0] == '\'') 
    {
        operand++; // Пропускаем символ '.
        // Побайтово заносим символы в машинную команду.
        while (*operand != '\'') 
        {
            mc = mc << 8;
            mc = mc | *operand;
            operand++;
        }
    }
    // Если операнд число.
    else mc = (uint)strtoul(operand, NULL, 0);
    return mc;
}

uint machineCommand(uint KOP, int X, uint address) 
{
    uint mc = 0;
    // Делаем машинный код 3 байтом.
    mc = KOP;
    mc = mc << 16;
    // Добавляем 15 битов адреса.
    mc = mc | address;
    // 16-ый бит = 1, если индексная адресация. 
    if (X) mc = mc | 0x8000;
    // Возвращаем машинную команду.
    return mc;
}

bool isName(const char* operand) 
{
    return !(operand[0] == '\0' ||
           operand[0] == '\'' ||
           (operand[0] >= '0' && operand[0] <= '9'));
}

char popAddressingMode(char* operand) 
{
    char result = '\0';
    uint length = strlen(operand);
    if (length > 1 && operand[length - 2] == ',') {
        result = operand[length - 1];
        operand[length - 2] = '\0';
    }
    return result;
}

void mcToStr(char* dst, uint mc, uint mcSize) 
{
    char mcFormat[MAX_STR_SIZE];
    sprintf(mcFormat, "%%0%uX", mcSize*2);
    sprintf(dst, mcFormat, mc);
}

void error(const char* format, ...) 
{
    fail = true;
    printf("[Ошибка] ");
    va_list argptr;
    va_start(argptr, format);
    vprintf(format, argptr);
    va_end(argptr);
}

void lineError(const char* format, ...)
{
    fail = true;
    printf("[Ошибка](Строка %u) ", currentLine);
    va_list argptr;
    va_start(argptr, format);
    vprintf(format, argptr);
    va_end(argptr);
}

void printNamesTable() 
{
    for (uint i = 0; i < names.size; i++) 
    {
        const char* key = names.values[i].key.chars;
        if (key[0] == '\0') 
        {
            printf("[%u]\n", i);
            continue;
        }
        OptionalUint* adress = (OptionalUint*)names.values[i].value;
        if (!adress->null)
            printf("[%u] Имя: %s Признак: %d Адрес: %X\n", i, key, !adress->null, adress->value);
        else
            printf("[%u] Имя: %s Признак: %d \n", i, key, !adress->null);
    }
}