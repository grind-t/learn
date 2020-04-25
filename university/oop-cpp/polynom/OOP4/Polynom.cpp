#include "Polynom.h"

Polynom::Polynom()
{
	power = 0;
	constants = { 0 }; 
}

Polynom::Polynom(int pow, double* c)
{
	power = pow;
	constants = new double[power + 1];
	for (int i = 0; i <= power; i++) constants[i] = c[i];
}

Polynom::Polynom(const Polynom& polynom) 
{
	power = polynom.power;
	if (polynom.constants == nullptr) constants = nullptr;
	constants = new double[power + 1];
	for (int i = 0; i <= power; i++) constants[i] = polynom.constants[i];
}

Polynom::~Polynom()
{
	delete[] constants;
}

void Polynom::operator=(const Polynom& polynom)
{
	power = polynom.power;
	if (polynom.constants == nullptr) constants = nullptr;
	constants = new double[power + 1];
	for (int i = 0; i <= power; i++) constants[i] = polynom.constants[i];
}

Polynom Polynom::operator+(Polynom& polynom)
{
	int maxPower = power > polynom.power ? power : polynom.power;
	double* first;
	double* second;

	first = new double[maxPower + 1];
	for (int i = 0; i <= power; i++) first[i] = constants[i];
	for (int i = power + 1; i <= maxPower; i++) first[i] = 0;

	second = new double[maxPower + 1];
	for (int i = 0; i <= polynom.power; i++) second[i] = polynom.constants[i];
	for (int i = polynom.power + 1; i <= maxPower; i++) second[i] = 0;

	for (int i = 0; i <= maxPower; i++) first[i] += second[i];

	return Polynom(maxPower, first);
}

Polynom Polynom::operator-(Polynom& polynom)
{
	int maxPower = power > polynom.power ? power : polynom.power;
	double* first;
	double* second;

	first = new double[maxPower + 1];
	for (int i = 0; i <= power; i++) first[i] = constants[i];
	for (int i = power + 1; i <= maxPower; i++) first[i] = 0;

	second = new double[maxPower + 1];
	for (int i = 0; i <= polynom.power; i++) second[i] = polynom.constants[i];
	for (int i = polynom.power + 1; i <= maxPower; i++) second[i] = 0;

	for (int i = 0; i <= maxPower; i++) first[i] -= second[i];

	return Polynom(maxPower, first);
}

Polynom Polynom::operator*(Polynom& polynom)
{
	int newindex = polynom.power + power;
	double* empty = new double[newindex + 1];
	for (int i = 0; i <= newindex; empty[i++] = 0);

	Polynom resultPolynom(newindex, empty);

	for (int i = 0; i <= polynom.power; i++)
		for (int j = 0; j <= power; j++)
			resultPolynom.constants[i + j] += polynom.constants[i] * constants[j];

	return resultPolynom;
}

Polynom Polynom::operator/(Polynom& polynom)
{
	// Проверка делимости.
	if (power < polynom.power)
	{
		Polynom b(1, new double{ 0 });
		return b;
	}
	bool inAlgoritm = true;

	Polynom temp = Polynom();
	Polynom p_1;
	Polynom p_2;
	Polynom p_3;

	temp.power = power - polynom.power;
	temp.constants = new double[temp.power + 1];

	p_1.power = power;
	p_1.constants = new double[power + 1];
	for (int i = power; i >= 0; i--)
		p_1.constants[i] = constants[i];

	p_2.power = polynom.power;
	p_2.constants = new double[polynom.power + 1];
	for (int i = polynom.power; i >= 0; i--)
		p_2.constants[i] = polynom.constants[i];

	p_3.power = p_1.power;
	p_3.constants = new double[p_1.power + 1];

	double buffer;
	int k = 0;
	int i, j;
	while (inAlgoritm)
	{
		for (int i = polynom.power; i >= 0; i--)
			p_3.constants[i] = polynom.constants[i];

		if (p_2.power < p_1.power)
		{
			for (i = p_1.power, j = p_2.power; i >= 0; i--, j--)
				if (j < 0)
					p_3.constants[i] = 0;
				else
					p_3.constants[i] = p_2.constants[j];
		}

		buffer = p_1.constants[p_1.power] / p_3.constants[p_1.power];

		temp.constants[temp.power - k] = buffer;
		k++;

		for (int i = 0; i <= p_1.power; i++)
			p_3.constants[i] *= buffer;

		for (int i = 0; i <= p_1.power; i++)
			p_1.constants[i] -= p_3.constants[i];

		p_1.power--;
		if (p_2.power > p_1.power) inAlgoritm = false;

	}
	return temp;
}

istream& operator>>(std::istream& fi, Polynom& polynom)
{
	cout << "степень = ";
	fi >> polynom.power;

	polynom.constants = new double[polynom.power + 1];
	for (int i = 0; i < polynom.power + 1; i++)
	{
		cout << "Константа для x[" << i << "] = ";
		fi >> polynom.constants[i];
	}

	return fi;
}

ostream& operator<<(std::ostream & fo, Polynom & polynom)
{
	for (int i = polynom.power; i > 0; i--) fo << " ( " << (polynom.constants[i]) << " ) * x ^ " << i << " + ";
	fo << " ( " << polynom.constants[0] << " ) ";
	return fo;
}

double Polynom::value(double x0) {
	double val = 0.0;
	for (int i = 0; i < power + 1; i++) {
		val += constants[i] * pow(x0, i);
	}
	return val;
}