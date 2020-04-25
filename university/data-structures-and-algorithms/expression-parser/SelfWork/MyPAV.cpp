#include "pch.h"
#include "MyPAV.h"
#include <iostream>
using namespace std;

MyPAV::MyPAV(char* s) 
{
	cout << "Constructor" << endl;
	p = new char[strlen(s) + 1];
	if (!p) exit(777);
	strcpy(p, s);
}

void MyPAV::Show()
{
	cout << p << endl;
}

char* MyPAV::Postfix() 
{
	if (!p) exit(777);
	int len = strlen(p), count = 0;
	char* stroka = new char[len + 1];
	char* temp = new char[len + 1];
	int istroka = 0, itemp = 0;
	for (int i = 0; i < len; i++)
	{
		if (p[i] == '(') count++;
		else if (p[i] == ')')
		{
			stroka[istroka++] = temp[--itemp];
			count--;
			if (count == 0)
			{
				stroka[istroka] = 0;
				return stroka;
			}
		}
		else if (p[i] >= 'a' && p[i] <= 'z') stroka[istroka++] = p[i];
		else temp[itemp++] = p[i];
	}
	stroka[istroka] = 0;
	return stroka;
}