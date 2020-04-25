#include "pch.h"
#include "Table.h"
#include <iostream>
using namespace std;

Table::Table() 
{
	firstNode = NULL;
}

bool Table::IsEmpty() 
{
	return firstNode == NULL;
}

void Table::AddToStart(int key, int value) 
{
	Node* newNode = new Node();
	newNode->key = key;
	newNode->value = value;
	newNode->next = firstNode;
	firstNode = newNode;
}

void Table::AddToEnd(int key, int value) 
{
	if (firstNode == NULL) AddToStart(key, value);

	Node* previousNode = firstNode;
	Node* currentNode = firstNode;
	while (currentNode != NULL)
	{
		previousNode = currentNode;
		currentNode = currentNode->next;
	}

	currentNode = new Node();
	currentNode->key = key;
	currentNode->value = value;
	currentNode->next = NULL;
	previousNode->next = currentNode;
}

Node* Table::Find(int key)
{
	Node* currentNode = firstNode;
	while (currentNode != NULL && currentNode->key != key) currentNode = currentNode->next;
	return currentNode;
}

void Table::Remove(int key) 
{
	if (firstNode == NULL) return;
	Node* previousNode = firstNode;
	Node* currentNode = firstNode;

	while (currentNode != NULL && currentNode->key != key) 
	{
		previousNode = currentNode;
		currentNode = currentNode->next;
	}

	if (currentNode != NULL) 
	{
		if (currentNode == previousNode) firstNode = currentNode->next;
		else previousNode->next = currentNode->next;
		delete currentNode;
	}
}

void Table::Print() 
{
	Node* currentNode = firstNode;
	while (currentNode != NULL) 
	{
		cout << "key: " << currentNode->key << " value: " << currentNode->value << endl;
		currentNode = currentNode->next;
	}
	cout << endl;
}