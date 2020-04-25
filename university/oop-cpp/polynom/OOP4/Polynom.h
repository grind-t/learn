#pragma once
#include <iostream>
#include <iterator>
#include <algorithm>
using namespace std;

class Polynom {
private:
	// Степень полинома.
	int power;
	// Константы полинома.
	double* constants;

public:
	Polynom();
	~Polynom();
	Polynom(int, double*);
	Polynom(const Polynom&);
	double value(double);

	void operator=(const Polynom&);
	Polynom operator+(Polynom&);
	Polynom operator-(Polynom&);
	Polynom operator*(Polynom&);
	Polynom operator/(Polynom&);

	friend std::ostream& operator<<(std::ostream&, Polynom&);
	friend std::istream& operator>>(std::istream&, Polynom&);
};