#pragma once
#include "pch.h"
#include <string>
using namespace std;

class MyString : string
{
public:
	MyString(const char* c);
	wstring ToKOI8R();
};