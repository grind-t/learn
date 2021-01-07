#include <stdlib.h>
#include <string.h>
#include <ctype.h>

void strreplace(char *s, size_t capacity, const char *oldsub, const char *newsub)
{
    char *pch = strstr(s, oldsub);
    if (pch == NULL)
        return;
    size_t oldsub_len = strlen(oldsub);
    size_t newsub_len = strlen(newsub);
    size_t len = strlen(s);
    int diff = newsub_len - oldsub_len;
    if (diff > 0)
    {
        len += diff;
        if (len >= capacity)
            return;
        do
        {
            size_t end = pch - s + newsub_len;
            for (size_t i = len; i >= end; i--)
                s[i] = s[i - diff];
            memcpy(pch, newsub, newsub_len);
            len += diff;
            pch = strstr(pch + newsub_len, oldsub);
        } while (len < capacity && pch != NULL);
    }
    else if (diff < 0)
    {
        do
        {
            for (size_t i = pch - s + oldsub_len; i <= len; i++)
                s[i + diff] = s[i];
            memcpy(pch, newsub, newsub_len);
            pch = strstr(pch + newsub_len, oldsub);
        } while (pch != NULL);
    }
    else
    {
        do
        {
            memcpy(pch, newsub, newsub_len);
            pch = strstr(pch + newsub_len, oldsub);
        } while (pch != NULL);
    }
}

void strrtrim(char *s) {
    size_t len = strlen(s);
    while (len > 0 && isspace(s[len-1]))
        len--;
    s[len] = '\0';
}