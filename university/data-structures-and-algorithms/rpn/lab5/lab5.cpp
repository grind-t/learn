// lab5.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>
#include <string>
using namespace std;

string str = "";

struct Node;
typedef Node* pNode;
struct Node
{
	pNode next = nullptr;
	bool hasValue = false;
	union {
		pNode nextLevel = nullptr;
		char value;
	};
};

bool IsOperator(char c) 
{
	return c == '+' || c == '-' || c == '*' || c == '/';
}

void InputToList(pNode &node) 
{
	if (str.length() > 0)
	{
		char c = str[0];
		str.erase(str.begin());

		if (c == '(')
		{
			node = new Node;
			InputToList(node->nextLevel);
			InputToList(node->next);
		}
		else if ((c >= 'a' && c <= 'z') || IsOperator(c))
		{
			node = new Node;
			node->hasValue = true;
			node->value = c;
			InputToList(node->next);
		}
		else if (c == ')') node = nullptr;
	}
	else node = nullptr;
}

void PrintList(pNode &node)
{
	if (node == nullptr) return;

	if (node->hasValue) cout << node->value;
	else PrintList(node->nextLevel);
	PrintList(node->next);
}

void PrintListByLevel(pNode &node, int level) 
{
	if (node == nullptr) return;

	PrintListByLevel(node->nextLevel, level + 1);
	cout << endl;
	cout << level << ":" << " ";
	if (node->hasValue) cout << node->value;
	PrintListByLevel(node->next, level);
}

// ((a+b)*(c-(b/a)))
void RPN(pNode &node) 
{
	if (node == nullptr) return;

	if (!node->hasValue) RPN(node->nextLevel);

	if (node->next != nullptr && node->next->next != nullptr && node->next->hasValue && IsOperator(node->next->value))
	{
		// a -> + -> b -> ...
		pNode aNode = node; // a
		pNode operatorNode = node->next; // +
		pNode bNode = node->next->next; // b
		pNode otherNode = node->next->next->next; // ...

		aNode->next = bNode; // a -> b
		bNode->next = operatorNode; // a -> b -> +
		operatorNode->next = otherNode; // a -> b -> + -> ...

		RPN(node->next);
	}
}

int main()
{
	pNode node;
	cin >> str;
	InputToList(node);
	RPN(node);
	PrintList(node);
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
