#pragma once
#include "Node.h"

class String
{
private:
	Node* firstNode = NULL;
	Node* lastNode = NULL;
	int length = 0;

public:
	String();
	String(char[]);

	void AddFirst(char);
	void AddLast(char);

	void RemoveFirst();
	void RemoveLast();
	bool Remove(char);

	bool Insert(char, int);
	bool Replace(char, char);

	int IndexOf(char);
	int IndexOf(String&);

	String* Slpit(char);

	bool Contains(char);

	void Print();
	char* GetCharArray();
	int Length();
};

String operator+(String&, String&);
String operator-(String&, String&);
