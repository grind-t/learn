#include "Double.h"

Double::Double() 
{
	value = 0.0;
}

Double::Double(string s) 
{
	value = stod(s);
}

void Double::Print() 
{
	cout << value << endl;
}

bool Double::operator<(const Double& d) 
{
	return value < d.value;
}

bool Double::operator>(const Double& d) 
{
	return value > d.value;
}

bool Double::operator==(const Double& d) 
{
	return value == d.value;
}