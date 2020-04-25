#pragma once
#include <iostream>
#include <string>
using namespace std;

class Double 
{
private:
	double value;

public:
	Double();
	Double(string);
	void Print();
	bool operator<(const Double&);
	bool operator>(const Double&);
	bool operator==(const Double&);
};