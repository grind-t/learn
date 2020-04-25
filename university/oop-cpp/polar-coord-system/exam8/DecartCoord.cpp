#include "DecartCoord.h"
#include <cmath>

DecartCoord::DecartCoord() : x(0.0), y(0.0) {

}

DecartCoord::DecartCoord(double a, double b) : x(a), y(b) {

}

double DecartCoord::Distance(const DecartCoord& c) const {
	return sqrt(pow(c.x - x, 2) + pow(c.y - y, 2));
}