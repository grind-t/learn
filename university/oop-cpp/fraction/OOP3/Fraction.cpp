#include "Fraction.h"
#include <string>
using namespace std;

Fraction::Fraction(int numenator, int denominator)
{
	if (denominator == 0)
	{
		cout << "division by zero" << endl;
		Fraction::numenator = Fraction::denominator = 1;
		return;
	}

	Fraction::numenator = numenator;
	Fraction::denominator = abs(denominator);
}

Fraction Fraction::FromInt(int a) 
{
	return Fraction(a, a);
}

Fraction Fraction::FromDouble(double a) 
{
	int denominator = 1;
	while (a != (int)a) 
	{
		denominator *= 10;
		a *= 10;
	}
	return Fraction((int)a, denominator);
}

int Fraction::GetNumenator() { return numenator; }
int Fraction::GetDenominator() { return denominator; }

void Fraction::Print() { cout << to_string(numenator) << " / " << to_string(denominator) << endl; }

int NOD(unsigned int a, unsigned int b)
{
	while (a != 0 && b != 0)
	{
		if (a > b) a = a % b;
		else b = b % a;
	}

	return a+b;
}

int NOK(unsigned int a, unsigned int b)
{
	return (a * b) / NOD(a, b);
}

Fraction Reduce(const Fraction& a) 
{
	int nod = NOD(abs(a.numenator), a.denominator);
	return Fraction(a.numenator / nod, a.denominator / nod);
}

Fraction operator+(const Fraction& a, const Fraction& b)
{
	Fraction result;
	Fraction a1;
	Fraction b1;

	int nok = NOK(a.denominator, b.denominator);
	int toCommonDenominator1 = nok / a.denominator;
	int toCommonDenominator2 = nok / b.denominator;

	a1 = Fraction(a.numenator * toCommonDenominator1, a.denominator * toCommonDenominator1);
	b1 = Fraction(b.numenator * toCommonDenominator2, b.denominator * toCommonDenominator2);

	result = Fraction(a1.numenator + b1.numenator, nok);

	return result;
}
Fraction operator+(const Fraction& a, int b) { return a + Fraction::FromInt(b); }
Fraction operator+(int a, const Fraction& b) { return b + a; }
Fraction operator+(const Fraction& a, double b) { return a + Fraction::FromDouble(b); }
Fraction operator+(double a, const Fraction& b) { return b + a; }

Fraction operator-(const Fraction& a, const Fraction& b) { return a + b * -1; }
Fraction operator-(const Fraction& a, int b) { return a - Fraction::FromInt(b); }
Fraction operator-(int a, const Fraction& b) { return b - a; }
Fraction operator-(const Fraction& a, double b) { return a - Fraction::FromDouble(b); }
Fraction operator-(double a, const Fraction& b) { return b - a; }

Fraction operator*(const Fraction& a, const Fraction& b) { return Fraction(a.numenator * b.numenator, a.denominator * b.denominator); }
Fraction operator*(const Fraction& a, int b) { return a * Fraction::FromInt(b); }
Fraction operator*(int a, const Fraction& b) { return b * a; }
Fraction operator*(const Fraction& a, double b) { return a * Fraction::FromDouble(b); }
Fraction operator*(double a, const Fraction& b) { return b * a; }

Fraction operator/(const Fraction& a, const Fraction& b) { return Fraction(a.numenator * b.denominator, a.denominator * b.numenator); }
Fraction operator/(const Fraction& a, int b) { return a / Fraction::FromInt(b); }
Fraction operator/(int a, const Fraction& b) { return b / a; }
Fraction operator/(const Fraction& a, double b) { return a / Fraction::FromDouble(b); }
Fraction operator/(double a, const Fraction& b) { return b / a; }

void Fraction::operator=(const Fraction& a) 
{
	numenator = a.numenator;
	denominator = a.denominator;
}
void Fraction::operator=(int a) { operator=(Fraction::FromInt(a)); }
void Fraction::operator=(double a) { operator=(Fraction::FromDouble(a)); }

bool operator==(const Fraction& a, const Fraction& b) 
{
	Fraction a1 = Reduce(a);
	Fraction b1 = Reduce(b);
	return a1.numenator == b1.numenator && a1.denominator == b1.denominator;
}
bool operator!=(const Fraction& a, const Fraction& b) 
{
	Fraction a1 = Reduce(a);
	Fraction b1 = Reduce(b);
	return a1.numenator != b1.numenator || a1.denominator != b1.denominator;
}
bool operator>(const Fraction& a, const Fraction& b) { return (double)a.numenator / (double)a.denominator > (double)b.numenator / (double)b.denominator; }
bool operator<(const Fraction& a, const Fraction& b) { return (double)a.numenator / (double)a.denominator < (double)b.numenator / (double)b.denominator; }
bool operator>=(const Fraction& a, const Fraction& b) { return (double)a.numenator / (double)a.denominator >= (double)b.numenator / (double)b.denominator; }
bool operator<=(const Fraction& a, const Fraction& b) { return (double)a.numenator / (double)a.denominator <= (double)b.numenator / (double)b.denominator; }

ostream& operator<<(ostream& output, const Fraction& a) 
{
	output << a.numenator << " / " << a.denominator;
	return output;
}
istream& operator>>(istream& input, Fraction& a) 
{
	int numenator, denominator;
	input >> numenator >> denominator;
	a = Fraction(numenator, denominator);
	return input;
}

Fraction::operator double() 
{
	return ((double)numenator) / ((double)denominator);
}

Fraction::operator float() 
{
	return ((float)numenator) / ((float)denominator);
}