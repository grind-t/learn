#pragma once
#include <iostream>
using namespace std;

class ComplexNumber {
public:
	// Действительная и мнимая часть комплексного числа.
	double a, b;

	ComplexNumber();
	ComplexNumber(double a, double b);

	ComplexNumber operator+ (const ComplexNumber&) const;
	ComplexNumber operator- (const ComplexNumber&) const;
	ComplexNumber operator* (const ComplexNumber&) const;
	ComplexNumber operator/ (const ComplexNumber&) const;
	friend ostream& operator<<(ostream& out, const ComplexNumber& c);
	friend istream& operator>>(istream& in, ComplexNumber& c);
};
