#include "strhashtable.h"

uint hashKey(const char* s) 
{
    uint key = 0;
    uint length = strlen(s);
    uint iterations = length / 4;
    uint remainder = length % 4;
    uint word = 0;
    for (int i = 0; i < iterations; i++) 
    {
        key = key >> 1 | key << 31; // Циклический сдвиг.
        memcpy(&word, s, 4);
        key += word;
        s += 4;
    }
    if (remainder != 0) 
    {
        key = key >> 1 | key << 31;
        word = 0;
        memcpy(&word, s, remainder);
        key += word;
    }
    return key;
}

uint hashf(const HashTableParams* params, uint K) 
{
    return (params->A * K) >> (params->w - params->m);
}

OptionalUint insertionIndex(const StrHashTable* hashTable, uint hash) 
{
    for (uint i = 0; i < hashTable->size; i++) 
    {
        const uint index = (hash + i) % hashTable->size;
        if (hashTable->values[index].key.chars[0] == '\0')
            return (OptionalUint){false, index};
    }
    return (OptionalUint){true, 0};
}

OptionalUint add(StrHashTable* hashTable, const str* key, void* value) 
{
    const uint hash = hashf(&hashTable->params, hashKey(key->chars));
    const OptionalUint index = insertionIndex(hashTable, hash);
    if(index.null) 
        return grow(hashTable) ? add(hashTable, key, value) : (OptionalUint){true, 0};
    strcpy(hashTable->values[index.value].key.chars, key->chars);
    hashTable->values[index.value].value = value;
    return index;
}

OptionalUint get(const StrHashTable* hashTable, const str* key) 
{
    const uint hash = hashf(&hashTable->params, hashKey(key->chars));
    for (uint i = 0; i < hashTable->size; i++) 
    {
        const uint index = (hash + i) % hashTable->size;
        if (strcmp(hashTable->values[index].key.chars, key->chars) == 0)
            return (OptionalUint){false, index};
        else if (hashTable->values[index].key.chars[0] == '\0')
            return (OptionalUint){true, 0};
    }
    return (OptionalUint){true, 0};
}

bool grow(StrHashTable* hashTable) 
{
    uint oldSize = hashTable->size;
    StrHashTableItem* oldItems = hashTable->values;
    hashTable->size *= 2;
    hashTable->values = (StrHashTableItem*)calloc(hashTable->size, sizeof(StrHashTableItem));
    if (hashTable->values == NULL) 
    {
        hashTable->size = oldSize;
        hashTable->values = oldItems;
        return false;
    }
    hashTable->params.m += 1;
    for (uint i = 0; i < oldSize; i++) 
        add(hashTable, &oldItems[i].key, oldItems[i].value);
    free(oldItems);
    return true;
}

void freeHashTable(StrHashTable* hashTable) 
{
    for (uint i = 0; i < hashTable->size; i++)
        free(hashTable->values[i].value);
    free(hashTable->values);
}

uint collisionCount(const HashTableParams* params, const StrArr* keys)
{
    uint count = 0;
    uint tableSize = 1 << params->m;
    uint indexes[tableSize];
    for (uint i = 0; i < tableSize; i++) 
        indexes[i] = 0;
    for (uint i = 0; i < keys->size; i++)
        indexes[hashf(params, hashKey(keys->values[i].chars))]++;
    for (uint i = 0; i < tableSize; i++) 
        if (indexes[i] > 1) count += indexes[i] - 1;
    return count;
}

uint minCollisions(const HashTableParams* params, const StrArr* keys, uint offset) 
{
    uint minCollisions = 0xFFFFFFFF;
    uint index = 0;
    for (uint i = params->A - offset; i <= params->A + offset; i++)
    {
        uint collisions = collisionCount(params, keys);
        if (collisions < minCollisions) 
        {
            minCollisions = collisions;
            index = i;
        }
    }
    return index;
}
