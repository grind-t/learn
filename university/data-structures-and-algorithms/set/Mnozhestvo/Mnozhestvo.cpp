// Mnozhestvo.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>
#include <io.h>
#include <fcntl.h>
#include <string>
#include <sstream>
using namespace std;

const int uSize = 10; // Размер универсума.
int u[uSize] = { 0,1,2,3,4,5,6,7,8,9 }; // Универсум.
int currentSet = 0;
// Список команд в консоли.
wstring commands[10][3] = 
{
	{L"CurrSet", L"выбрать текущее множество, с которым нужно работать", L"(аргумент: 1 или 2 или 3)"},
	{L"Add", L"добавить элемент в текущее множество", L"(аргумент: 0-9)"},
	{L"Contains", L"есть ли элемент в текущем множестве?", L"(аргумент: 0-9)"},
	{L"Remove", L"удалить элемент из текущего множества", L"(аргумент: 0-9)"},
	{L"IsEmpty", L"текущее множество пустое?", L""},
	{L"Addition", L"операция дополнения к текущему множеству", L""},
	{L"Print", L"распечатывает все элементы текущего множества", L""},
	{L"Union", L"операция объединения 1 и 2 множества", L""},
	{L"Intersection", L"операция пересечения 1 и 2 множества", L""},
	{L"Difference", L"операция разности 1 и 2 множества", L""},
};

// Класс множества.
class Set
{
public:
	// Маска.
	bool mask[uSize];

	// Конструктор создает пустое множество.
	Set()
	{
		for (int i = 0; i < uSize; i++) mask[i] = 0;
	}

	// Добавление элемента из универсума в множество.
	void Add(int t)
	{
		for (int i = 0; i < uSize; i++) if (t == u[i] && !mask[i]) mask[i] = 1;
	}

	// Показывает есть ли элемент в множестве.
	bool Contains(int t)
	{
		for (int i = 0; i < uSize; i++) if (t == u[i]) return mask[i];
		return false;
	}

	// Удаляет элемент из множества.
	void Remove(int t)
	{
		for (int i = 0; i < uSize; i++) if (t == u[i]) mask[i] = 0;
	}

	// Показывает пустое ли множество.
	bool IsEmpty()
	{
		for (int i = 0; i < uSize; i++) if (mask[i]) return false;
		return true;
	}

	// Распечатывает элементы множества.
	void Print()
	{
		for (int i = 0; i < uSize; i++) if (mask[i]) wprintf(L"{%d} ", u[i]);
		wcout << endl;
	}

	
};

// Дополнение к множеству.
void Addition(Set s1, Set& s3)
{
	for (int i = 0; i < uSize; i++) s3.mask[i] = 0;
	for (int i = 0; i < uSize; i++)
	{
		if (s1.mask[i] == 0) s3.mask[i] = 1;
	}
}

// Операция объединения множеств.
void Union(Set s1, Set s2, Set& s3)
{
	for (int i = 0; i < uSize; i++) s3.mask[i] = 0;
	for (int i = 0; i < uSize; i++)
	{
		if (s1.mask[i] || s2.mask[i]) s3.mask[i] = 1;
	}
}

// Операция пересечения множеств.
void Intersection(Set s1, Set s2, Set& s3)
{
	for (int i = 0; i < uSize; i++) s3.mask[i] = 0;
	for (int i = 0; i < uSize; i++)
	{
		if (s1.mask[i] && s2.mask[i]) s3.mask[i] = 1;
	}
}

// Операция разности множеств.
void Difference(Set s1, Set s2, Set& s3)
{
	for (int i = 0; i < uSize; i++) s3.mask[i] = 0;
	for (int i = 0; i < uSize; i++)
	{
		if (s1.mask[i] && !s2.mask[i]) s3.mask[i] = 1;
	}
}

int main()
{
	_setmode(_fileno(stdout), _O_U16TEXT);
	_setmode(_fileno(stdin), _O_U16TEXT);
	_setmode(_fileno(stderr), _O_U16TEXT);

	/*wcout << L"Доступные команды:" << endl;
	for (int i = 0; i < 10; i++) 
	{
		wprintf(L"%ls - %ls %ls \n", commands[i][0].c_str(), commands[i][1].c_str(), commands[i][2].c_str());
	}
	wcout << endl;*/

	Set s1, s2, s3;

	s1.Add(1);
	s1.Add(2);
	s2.Add(2);
	s2.Add(3);
	s2.Add(5);

	wcout << "Union:" << endl;
	Union(s1, s2, s3);
	s3.Print();
	wcout << "Intersection:" << endl;
	Intersection(s1, s2, s3);
	s3.Print();
	wcout << "Difference:" << endl;
	Difference(s1, s2, s3);
	s3.Print();
	wcout << "Addition s2:" << endl;
	Addition(s2, s3);
	s3.Print();

	wcout << "s1 contains 1:" << endl;
	wcout << s1.Contains(1) << endl;
	wcout << "s1 is empty:" << endl;
	wcout << s1.IsEmpty() << endl;
	wcout << "s1 remove 1:" << endl;
	s1.Remove(1);
	s1.Print();
	/*while (true)
	{
		wstring line;
		wstring command;
		wstring arg;
		wcout << L"Введите команду: ";
		getline(wcin, line);
		wstringstream stream(line);
		stream >> command;
		stream >> arg;

		int commandIndex = -1;
		for (int i = 0; i < 10; i++) if (commands[i][0] == command) commandIndex = i;

		switch (commandIndex)
		{
		case 0:
			currentSet = stoi(arg) - 1;
			wcout << L"Теперь используется множество - " << currentSet + 1 << endl;
			break;
		case 1:
			sets[currentSet].Add(stoi(arg));
			wcout << L"Элемент добавлен." << endl;
			break;
		case 2:
			if (sets[currentSet].Contains(stoi(arg))) wcout << L"Элемент присутствует в множестве.";
			else wcout << L"Элемент отсутсвует в множестве.";
			wcout << endl;
			break;
		case 3:
			sets[currentSet].Remove(stoi(arg));
			wcout << L"Элемент удален." << endl;
			break;
		case 4:
			if (sets[currentSet].IsEmpty()) wcout << L"Множество пустое.";
			else wcout << L"Множество не пустое.";
			wcout << endl;
			break;
		case 5:
			//sets[currentSet].Addition(sets[2]);
			wcout << L"Результат операции в множестве номер 3." << endl;
			break;
		case 6:
			sets[currentSet].Print();
			break;
		case 7:
			Union(sets[0], sets[1], sets[2]);
			wcout << L"Результат операции в множестве номер 3." << endl;
			break;
		case 8:
			Intersection(sets[0], sets[1], sets[2]);
			wcout << L"Результат операции в множестве номер 3." << endl;
			break;
		case 9:
			Difference(sets[0], sets[1], sets[2]);
			wcout << L"Результат операции в множестве номер 3." << endl;;
		default:
			break;
		}
	}*/
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
