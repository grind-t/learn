#include "pch.h"
#include "String.h"
#include <iostream>
using namespace std;

// Создает новый экземпляр строки.
String::String() 
{

}

// Создает новый экземпляр строки из массива символов.
String::String(char s[]) 
{
	int i = 0;

	while (s[i] != NULL) 
	{
		AddLast(s[i]);
		i++;
	}
}

// Добавляет символ в начало.
void String::AddFirst(char c) 
{
	Node* newFirstNode = new Node(c);
	
	newFirstNode->next = firstNode;
	if (length == 0) lastNode = newFirstNode;
	else firstNode->previous = newFirstNode;

	firstNode = newFirstNode;
	length++;
}

// Добавляет символ в конец.
void String::AddLast(char c)
{
	Node* newLastNode = new Node(c);

	if (length == 0) firstNode = newLastNode;
	else 
	{
		lastNode->next = newLastNode;
		newLastNode->previous = lastNode;
	}

	lastNode = newLastNode;
	length++;
}

// Удаляет первый символ.
void String::RemoveFirst() 
{
	if (length == 0) return;

	if (length == 1) 
	{
		delete firstNode;
		firstNode = lastNode = NULL;
	}
	else 
	{
		firstNode = firstNode->next;
		delete firstNode->previous;
		firstNode->previous = NULL;
	}
	length--;
}

// Удаляет последний символ.
void String::RemoveLast() 
{
	if (length == 0) return;

	if (length == 1) 
	{
		delete lastNode;
		firstNode = lastNode = NULL;
	}
	else 
	{
		lastNode = lastNode->previous;
		delete lastNode->next;
		lastNode->next = NULL;
	}
	length--;
}

// Удаляет символ из строки.
bool String::Remove(char c) 
{
	if (length == 0) return false;

	Node* current = firstNode;
	
	while (current != NULL && current->c != c) current = current->next;

	if (current == NULL) return false;
	else if (current->next == NULL) RemoveLast();
	else if (current->previous == NULL) RemoveFirst();
	else 
	{
		current->previous->next = current->next;
		current->next->previous = current->previous;
		delete current;
		length--;
	}
	return true;
}

bool String::Insert(char c, int index)
{
	if (index > length || index < 0) return false;

	Node* current = firstNode;
	for (int i = 0; i < index; i++) current = current->next;

	if (current->previous == NULL) AddFirst(c);
	else if (current == NULL) AddLast(c);
	else 
	{
		Node* newNode = new Node(c);
		current->previous->next = newNode;
		newNode->previous = current->previous;
		current->previous = newNode;
		newNode->next = current;
	}
	return true;
}

bool String::Replace(char oldChar, char newChar) 
{
	if (length == 0) return false;

	Node* current = firstNode;

	while (current != NULL && current->c != oldChar) current = current->next;

	if (current == NULL) return false;
	current->c = newChar;
	return true;
}

// Возвращает индекс символа в строке.
int String::IndexOf(char c) 
{
	Node* current = firstNode;
	int index = 0;

	while (current != NULL && current->c != c) 
	{
		index++;
		current = current->next;
	}

	return current == NULL ? -1 : index;
}

// Возвращает индекc начала подстроки в строке.
int String::IndexOf(String& substring)
{
	char* str = GetCharArray();
	char* sub = substring.GetCharArray();
	int index = -1;

	for (int i = 0; i < Length(); i++)
	{
		for (int j = 0; j < substring.Length(); j++)
		{
			if (str[i] == sub[j]) i++;
			else goto out;
		}
		index = i - substring.Length();
	out:;
	}

	delete[] str;
	delete[] sub;
	return index;
}

// Разделяет строку на две подстроки с разделителем c. 
String* String::Slpit(char c) 
{
	String* s = new String[2];
	int index = IndexOf(c);
	
	if (index != -1) 
	{
		char* str = GetCharArray();
		for (int i = 0; i < index; i++) s[0].AddLast(str[i]);
		for (int i = index + 1; i < length; i++) s[1].AddLast(str[i]);
		delete[] str;
	}

	return s;
}

// Есть ли символ в строке?
bool String::Contains(char c) 
{
	if (IndexOf(c) != -1) return true;
	else return false;
}

// Печатает все символы.
void String::Print() 
{
	Node* current = firstNode;

	while (current != NULL)
	{
		cout << current->c;
		current = current->next;
	}
	cout << endl;
}

// Возвращает массив символов.
char* String::GetCharArray()
{
	char* c = new char[length + 1];

	Node* current = firstNode;
	for (int i = 0; i < length; i++) 
	{
		c[i] = current->c;
		current = current->next;
	}
	c[length] = '\0';

	return c;
}

// Возвращает длину строки.
int String::Length() 
{
	return length;
}

String operator+(String& s1, String& s2) 
{
	String s;
	char* c1 = s1.GetCharArray();
	char* c2 = s2.GetCharArray();
	
	for (int i = 0; i < s1.Length(); i++) s.AddLast(c1[i]);
	for (int i = 0; i < s2.Length(); i++) s.AddLast(c2[i]);

	delete[] c1;
	delete[] c2;
	return s;
}

String operator-(String& target, String& substring)
{
	String s;
	int index = target.IndexOf(substring);

	if (index != -1) 
	{
		char* t = target.GetCharArray();
		int length = target.Length() - substring.Length();

		for (int i = 0; i < index; i++) s.AddLast(t[i]);
		for (int i = index + substring.Length(); i < target.Length(); i++) s.AddLast(t[i]);

		delete[] t;
	}

	return s;
}

