#include "Rectangle.h"
#include <math.h>
using namespace std;

Rectangle::Rectangle() 
{
	x1 = y1 = x2 = y2 = 0;
}

Rectangle::Rectangle(int a, int b, int c, int d) 
{
	x1 = a;
	y1 = b;
	x2 = c;
	y2 = d;
}

int Rectangle::NumOfPointsInside() 
{
	int rows = abs(y2 - y1) - 1;
	int columns = abs(x2 - x1) - 1;

	if (rows > 0 && columns > 0) return rows * columns;
	else return 0;
}