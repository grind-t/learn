// VT24.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include <iostream>
#include "Binary.h"
#include <vector>
#include <fstream>
using namespace std;

int main()
{
	int K;
	ifstream ifile("C:\\Users\\GD\\source\\repos\\University\\Exercises\\VT24\\VT24\\IN.txt");
	ifile >> K;
	int* A = new int[K];
	int* B = new int[K];
	for (int i = 0; i < K; i++) ifile >> A[i] >> B[i];
	ifile.close();

	int* count = new int[K];
	for (int i = 0; i < K; i++) 
	{
		count[i] = 0;
		for (int j = A[i]; j <= B[i]; j++) count[i] += Binary(j).IsOddNumberOfOnes();
	}

	ofstream ofile("C:\\Users\\GD\\source\\repos\\University\\Exercises\\VT24\\VT24\\OUT.txt");
	for (int i = 0; i < K; i++) ofile << count[i] << endl;
	ofile.close();

	delete[] A;
	delete[] B;
	delete[] count;
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
