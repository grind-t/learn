#define _USE_MATH_DEFINES
#include "PolarCoord.h"
#include <cmath>

PolarCoord::PolarCoord() : r(0), f(0) {

}

PolarCoord::PolarCoord(double a, double b) : r(a), f(b) {
	if (f < 0 || f > 360) f = 0;
}

double PolarCoord::Distance(const PolarCoord& c) const {
	return c.ToDecart().Distance(this->ToDecart());
}

DecartCoord PolarCoord::ToDecart() const {
	return DecartCoord(r * cos(f * M_PI / 180), r * sin(f * M_PI / 180));
}

ostream& operator<< (ostream& out, const PolarCoord& c) {
	out << "r: " << c.r << " f: " << c.f << "°";
	return out;
}

istream& operator>> (istream& in, PolarCoord& c) {
	cout << "r: ";
	in >> c.r;
	cout << "f°: ";
	in >> c.f;
	return in;
}