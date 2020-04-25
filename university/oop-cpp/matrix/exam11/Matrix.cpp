#include "Matrix.h"

int Matrix::Rows() const {
	return rows;
}

int Matrix::Columns() const {
	return columns;
}

Matrix::Matrix() : matrix(nullptr), rows(0), columns(0) {

}

Matrix::Matrix(int r, int c) : matrix(nullptr), rows(r), columns(c) {
	if (rows == 0 || columns == 0) return;

	matrix = new int*[rows];

	for (int i = 0; i < rows; i++) matrix[i] = new int[columns];

	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < columns; j++) {
			matrix[i][j] = 0;
		}
	}
}

Matrix::Matrix(int** arr2d, int r, int c) : matrix(arr2d), rows(r), columns(c) {

}

Matrix::~Matrix() {
	for (int i = 0; i < 2; i++) {
		delete[] matrix[i];
	}
	delete[] matrix;
}

const int* Matrix::operator[] (const int index) const
{
	return matrix[index];
}

Matrix Matrix::SubMatrix(int r1, int r2, int c1, int c2) const {
	int r = r2 - r1 + 1;
	int c = c2 - c1 + 1;
	int** arr2d = new int*[r];

	for (int i = 0; i < r; i++) arr2d[i] = new int[c];

	for (int i = 0; i < r; i++) {
		for (int j = 0; j < c; j++) {
			arr2d[i][j] = matrix[r1 + i][c1 + j];
		}
	}

	return Matrix(arr2d, r, c);
}

ostream& operator<< (ostream& out, const Matrix& m)
{
	for (int i = 0; i < m.Rows(); i++) {
		for (int j = 0; j < m.Columns(); j++) {
			out << m[i][j] << " ";
		}
		out << endl;
	}

	return out;
}

istream& operator>> (istream& in, Matrix& m)
{
	for (int i = 0; i < m.Rows(); i++) {
		for (int j = 0; j < m.Columns(); j++) {
			cout << "[" << i << "]" << "[" << j << "]: ";
			in >> m.matrix[i][j];
		}
	}

	return in;
}