// lab3.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include "String.h"
#include <iostream>
using namespace std;

int main()
{
	String s1, s2, s3;
	char str1[] = "123456";
	char str2[] = "789";
	char str3[] = "2345";
	s1 = str1;
	s2 = str2;
	s3 = str3;

	(s1 + s2).Print();
	(s1 - s3).Print();
	(s1.Slpit('4')[0]).Print(); (s1.Slpit('4')[1]).Print();
	s1.Insert('a', 1); s1.Print();
	s1.Replace('a', 'b'); s1.Print();
	cout << s1.Contains('a') << endl;
	cout << s1.Contains('b') << endl;
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
