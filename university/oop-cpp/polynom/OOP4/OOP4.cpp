// OOP4.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include "Polynom.h"
#include <iostream>
using namespace std;

int main()
{
	setlocale(0, "");

	double x;
	Polynom first, second, sum, difference, product, quotient;

	cout << "Введите значение x: ";
	cin >> x;
	cout << endl;

	cout << "Введите первый многочлен:" << endl;
	cin >> first;
	cout << endl;
	cout << "Первый многочлен: " << first << endl;
	cout << "Значение для x = " << x << ": " << first.value(x) << endl << endl;

	cout << "Введите второй многочлен:" << endl;
	cin >> second;
	cout << endl;
	cout << "Второй многочлен: " << second << endl;
	cout << "Значение для x = " << x << ": " << second.value(x) << endl << endl;

	sum = first + second;
	cout << "Сумма: " << sum << endl;
	cout << "Значение для x = " << x << ": " << sum.value(x) << endl << endl;

	difference = first - second;
	cout << "Разность: " << difference << endl;
	cout << "Значение для x = " << x << ": " << difference.value(x) << endl << endl;

	product = first * second;
	cout << "Произведение: " << product << endl;
	cout << "Значение для x = " << x << ": " << product.value(x) << endl << endl;

	quotient = first / second;
	cout << "Частное: " << quotient << endl;
	cout << "Значение для x = " << x << ": " << quotient.value(x) << endl << endl;
}

// Запуск программы: CTRL+F5 или меню "Отладка" > "Запуск без отладки"
// Отладка программы: F5 или меню "Отладка" > "Запустить отладку"

// Советы по началу работы 
//   1. В окне обозревателя решений можно добавлять файлы и управлять ими.
//   2. В окне Team Explorer можно подключиться к системе управления версиями.
//   3. В окне "Выходные данные" можно просматривать выходные данные сборки и другие сообщения.
//   4. В окне "Список ошибок" можно просматривать ошибки.
//   5. Последовательно выберите пункты меню "Проект" > "Добавить новый элемент", чтобы создать файлы кода, или "Проект" > "Добавить существующий элемент", чтобы добавить в проект существующие файлы кода.
//   6. Чтобы снова открыть этот проект позже, выберите пункты меню "Файл" > "Открыть" > "Проект" и выберите SLN-файл.
