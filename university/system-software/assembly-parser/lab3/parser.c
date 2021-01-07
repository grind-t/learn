#include "parser.h"

bool trimNewLine(char* str) 
{
	uint length = strlen(str);
	if (str[length - 1] != '\n') return false;
	str[length - 1] = '\0';
	return true;
}

Asm parse(const str s) 
{
	// Результат разбора строки ассемблера.
	Asm res = {"", "", "", ""};
	// Длина строки.
	int length = strlen(s.chars);
	// Текущая позиция в строке.
	int i = 0;

	// Удаляем символ '\n' из конца строки, если он есть.
	if (s.chars[length - 1] == '\n') length--;

	// Выделяем комментарий от commentIndex до конца строки.
	for (i = COMMENT_INDEX; i < length; i++)
		strncat(res.comment, &s.chars[i], 1);

	// Ограничваем длину строки до позиции комментария.
	if (length > COMMENT_INDEX) length = COMMENT_INDEX;

	// Выделяем метку от labelIndex до пробела или конца строки.
	for (i = LABEL_INDEX; i < length && !isspace(s.chars[i]); i++)
		strncat(res.label, &s.chars[i], 1);

	// Пропускаем пробелы.
	while (i < length && isspace(s.chars[i]))
		i++;

	// Выделяем оператор от текущей позиции в строке до пробела или конца строки.
	for (; i < length && !isspace(s.chars[i]); i++)
		strncat(res.operator, &s.chars[i], 1);

	// Пропускаем пробелы.
	while (i < length && isspace(s.chars[i]))
		i++;

	// Выделяем операнд от текущей позиции в строке до пробела или конца строки.
	for (; i < length && !isspace(s.chars[i]); i++)
		strncat(res.operand, &s.chars[i], 1);
	
	return res;
}
