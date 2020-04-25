#include "Circle.h"
#include <cmath>

Circle::Circle() : x(0.0), y(0.0), R(0.0) {

}

Circle::Circle(double a, double b, double c) : x(a), y(b), R(c) {

}

CirclesRelation Circle::RelativeTo(const Circle& c) const {
	// Окружности полностью совпадают.
	if (x == c.x && y == c.y && R == c.R) return CirclesRelation(-1, false, false);

	// Расстояние между центрами окружностей.
	double distance = sqrt(pow(c.x - x, 2) + pow(c.y - y, 2));

	double difference = fabs(c.R - R);
	// Окружность с большим радиусом содержит в себе окружность с меньшим радиусом.
	if (difference > distance) return CirclesRelation(0, c.R < R, c.R > R);
	// Окружность с большим радиусом содержит в себе окружность с меньшим радиусом и они пересекаются в 1 точке.
	if (difference == distance) return CirclesRelation(1, c.R < R, c.R > R);

	double sum = c.R + R;
	// Окружности пересекаются в 2 точках.
	if (distance < sum) return CirclesRelation(2, false, false);
	// Окружности пересекаются в 1 точке.
	if (distance == sum) return CirclesRelation(1, false, false);

	// Окружности не пересекаются.
	return CirclesRelation(0, false, false);
}

ostream& operator<< (ostream& out, const Circle& c) {
	out << "x: " << c.x << " y: " << c.y << " R: " << c.R;
	return out;
}

istream& operator>> (istream& in, Circle& c) {
	cout << "x: ";
	in >> c.x;
	cout << "y: ";
	in >> c.y;
	cout << "R: ";
	in >> c.R;
	return in;
}
