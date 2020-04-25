#pragma once
#include <vector>
using namespace std;

class Binary 
{
private:
	vector<int> a;

public:
	Binary(int);

	vector<int> Get();
	bool IsOddNumberOfOnes();
};