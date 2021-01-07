#ifndef STR_HASHTABLE_H
#define STR_HASHTABLE_H
#include "../lab5/uint.h"
#include "../lab5/str.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

// Параметры хеш-таблицы.
typedef struct HashtableParams
{
    // Значение взаимно простое с w.
    uint A;
    // Размер машинного слова.
    uint w;
    // 2^m = размеру таблицы.
    uint m;
} HashTableParams;

// Элемент хеш-таблицы со строковым ключом.
typedef struct StrHashTableItem
{
    str key;
    void* value;
} StrHashTableItem;

// Хеш-таблица со строковыми ключами.
typedef struct StrHashTable
{
    uint size;
    HashTableParams params;
    StrHashTableItem* values;
} StrHashTable;

// Возвращает ключ для хеш-функции из строки.
uint hashKey(const char* s);

// Хеш-функция, использующая метод умножения.
uint hashf(const HashTableParams* params, uint key);

/* Возвращает не занятый индекс в хеш-таблице для вычисленного значения хеш-функции
   с учетом разрешения коллизий. Если хеш-таблица заполнена, устанавливает флаг null.*/
OptionalUint insertionIndex(const StrHashTable* hashTable, uint hash);

/* Добавляет пару ключ-значение в хеш-таблицу и возвращает индекс вставки.
   Если хеш-таблица заполнена и не удалось увеличить ее размер, устанавливает флаг null.*/
OptionalUint add(StrHashTable* hashTable, const str* key, void* value);

// Возвращает индекс ключа в хеш-таблице. Если его нет, устанавливает флаг null.
OptionalUint get(const StrHashTable* hashTable, const str* key);

// Увеличивает размер таблицы в 2 раза.
bool grow(StrHashTable* hashTable);

// Освобождает ресурсы занятые таблицей.
void freeHashTable(StrHashTable* hashTable);

// Считает количество коллизий в хеш-таблице с параметрами params для набора ключей keys.
uint collisionCount(const HashTableParams* params, const StrArr* keys);

/* Возвращает индекс с минимальным количеством коллизий
   в диапазоне [A-offset, A+offset] в хеш-таблице с
   параметрами params для набор ключей keys. */
uint minCollisions(const HashTableParams* params, const StrArr* keys, uint offset);

#endif
