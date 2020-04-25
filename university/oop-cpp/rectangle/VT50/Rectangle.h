#pragma once

class Rectangle 
{
public:
	int x1, y1, x2, y2;

	Rectangle();
	Rectangle(int, int, int, int);
	int NumOfPointsInside();
};