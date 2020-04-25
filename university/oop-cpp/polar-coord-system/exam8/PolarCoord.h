#pragma once
#include <iostream>
#include "DecartCoord.h"
using namespace std;

class PolarCoord {
private:
	// Радиальная и угловая координата.
	double r, f;

public:
	PolarCoord();
	PolarCoord(double r, double f);

	double Distance(const PolarCoord& c) const;
	DecartCoord ToDecart() const;

	friend ostream& operator<<(ostream& out, const PolarCoord& c);
	friend istream& operator>>(istream& in, PolarCoord& c);
};
