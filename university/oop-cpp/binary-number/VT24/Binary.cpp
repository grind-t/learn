#include "Binary.h"

Binary::Binary(int n) 
{
	do 
	{
		a.insert(a.begin(), n % 2);
		n = n / 2;
	} while (n > 0);
}

vector<int> Binary::Get() 
{
	return a;
}

bool Binary::IsOddNumberOfOnes() 
{
	int count = 0;
	for (int i = 0; i < a.size(); i++) count += a[i];
	return count % 2 == 1;
}