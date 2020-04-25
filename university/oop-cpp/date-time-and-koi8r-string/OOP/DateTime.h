#pragma once
#include "pch.h"
#include <string>
using namespace std;

class DateTime
{
private:
	int seconds = 0;
	int minutes = 0;
	int hours = 0;
	int day = 0;
	int month = 0;
	int year = 0;

public:
	inline int GetSeconds();
	inline int GetMinutes();
	inline int GetHours();
	inline int GetDay();
	inline int GetMonth();
	inline int GetYear();

	inline void SetSeconds(int value);
	inline void SetMinutes(int value);
	inline void SetHours(int value);
	inline void SetDay(int value);
	inline void SetMonth(int value);	
	inline void SetYear(int value);

	DateTime(int year = 1, int month = 1, int day = 1, int hours = 0, int minutes = 0, int seconds = 0);

	void Print();
	void Print(string format);

	static DateTime* Now();
	static DateTime* FromString(string str);
	static bool IsValid(int year = 1, int month = 1, int day = 1, int hours = 0, int minutes = 0, int seconds = 0);
};