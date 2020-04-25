#pragma once
#include "Node.h"

class Table
{
public:
	Node* firstNode;

	Table();
	bool IsEmpty();
	void AddToStart(int, int);
	void AddToEnd(int, int);
	Node* Find(int);
	void Remove(int);
	void Print();
};