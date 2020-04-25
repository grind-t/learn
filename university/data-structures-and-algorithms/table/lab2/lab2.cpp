// lab2.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include "Table.h"
#include <iostream>
using namespace std;

int main()
{
	Table t;

	t.AddToStart(0, 1);
	t.AddToEnd(1, 2);
	t.AddToEnd(2, 3);
	t.Print();

	cout << "IsEmpty: " << t.IsEmpty() << endl;
	cout << "Value of key 1 is: " << t.Find(1)->value << endl;
	t.Remove(1);
	t.Print();
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
