#pragma once
#include <iostream>
using namespace std;

struct CirclesRelation {
	// Количество точек пересчения окружностей.
	int intersectionPoints;
	// Окружность содержит другую окружность?
	bool contains;
	// Окружность содержится в другой окружности?
	bool contained;

	CirclesRelation(int intersections, bool containsOther, bool containedInOther) : intersectionPoints(intersections), contains(containsOther), contained(containedInOther) {
		
	}
};

class Circle {
public:
	// Координаты центра окружности и ее радиус.
	double x, y, R;

	Circle();
	Circle(double x, double y, double R);

	// Отношения между двумя окружностями.
	CirclesRelation RelativeTo(const Circle& c) const;

	friend ostream& operator<<(ostream& out, const Circle& c);
	friend istream& operator>>(istream& in, Circle& c);
};
