#pragma once
#include <iostream>
using namespace std;

class Matrix {
private:
	// Двумерный массив, хранящий значения матрицы.
	int** matrix;
	// Количество строк и столбцов матрицы.
	int rows, columns;

public:
	// Возвращает количетсво срок матрицы.
	inline int Rows() const;
	// Возвращает количество столбцов матрицы.
	inline int Columns() const;

	// Создает пустую матрицу.
	Matrix();
	// Создает матрицу с заданным количеством строк и столбцов, заполненную нулями.
	Matrix(int rows, int columns);
	// Создает матрицу из двумерного массива.
	Matrix(int** arr, int rows, int columns);
	// Деструктор.
	~Matrix();

	// Возвращает подматрицу с указанными начальной и последней строкой, и начальным и последним столбцом.
	Matrix SubMatrix(int startRow, int endRow, int startColumn, int endColumn) const;

	// Возвращает строку матрицы по индексу.
	const int* operator[] (const int index) const;
	// Вывод матрицы в консоль.
	friend ostream& operator<< (ostream& out, const Matrix& matrix);
	// Ввод матрицы из консоли.
	friend istream& operator>> (istream& in, Matrix& matrix);
};
