#pragma once

class DecartCoord {
private:
	// Координаты по x и y.
	double x, y;

public:
	DecartCoord();
	DecartCoord(double x, double y);

	double Distance(const DecartCoord& c) const;
};
