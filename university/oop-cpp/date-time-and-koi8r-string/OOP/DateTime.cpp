#include "pch.h"
#include "DateTime.h"
#include <iostream>
#include <ctime>
#include <vector>
using namespace std;

inline int DateTime::GetSeconds() { return seconds; }
inline int DateTime::GetMinutes() { return minutes; }
inline int DateTime::GetHours() { return hours; }
inline int DateTime::GetDay() { return day; }
inline int DateTime::GetMonth() { return month; }
inline int DateTime::GetYear() { return year; }

inline void DateTime::SetSeconds(int value) 
{
	if (value < 0 || value == seconds) return;
	seconds = value % 60;
	SetMinutes(minutes + value / 60);
}

inline void DateTime::SetMinutes(int value) 
{
	if (value < 0 || value == minutes) return;
	minutes = value % 60;
	SetHours(hours + value / 60);
}

inline void DateTime::SetHours(int value)
{
	if (value < 0 || value == hours) return;
	hours = value % 24;
	SetDay(day + value / 24);
}

inline void DateTime::SetDay(int value) 
{
	if (value < 1 || value == day) return;
	int maxDay = 28 + (month + month / 8) % 2 + 2 % month + 2 / month + 1;
	// Если февраль и високосный год.
	if (month == 2 && (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)) maxDay++;
	day = value % maxDay;
	if (value / maxDay > 0) 
	{
		value -= maxDay - 1;
		SetMonth(month + 1);
		SetDay(value);
	}
	else day = value;
}

inline void DateTime::SetMonth(int value) 
{
	if (value < 1 || value == month) return;
	month = value % 13;
	SetYear(year + value / 13);
}

inline void DateTime::SetYear(int value) 
{
	if (value < 1 || value == year) return;
	year = value;
}

DateTime::DateTime(int year, int month, int day, int hours, int minutes, int seconds) 
{
	SetYear(year);
	SetMonth(month);
	SetDay(day);
	SetHours(hours);
	SetMinutes(minutes);
	SetSeconds(seconds);
}

void DateTime::Print() { Print("DD/MM/YYYY hh:mm:ss"); }

void DateTime::Print(string format) 
{
	string temp = "";
	format += '\0';
	for (unsigned int i = 0; i < format.length(); i++) 
	{
		if (format[i] == '/' || format[i] == ':' || format[i] == ' ' || format[i] == '\0') 
		{
			if (temp == "DD") printf("%02d", day);
			else if (temp == "D") printf("%d", day);
			else if (temp == "MM") printf("%02d", month);
			else if (temp == "M") printf("%d", month);
			else if (temp == "YYYY") printf("%04d", year);
			else if (temp == "Y") printf("%d", year);
			else if (temp == "hh") printf("%02d", hours);
			else if (temp == "h") printf("%d", hours);
			else if (temp == "mm") printf("%02d", minutes);
			else if (temp == "m") printf("%d", minutes);
			else if (temp == "ss") printf("%02d", seconds);
			else if (temp == "s") printf("%d", seconds);
			printf("%c", format[i]);
			temp = "";
		}
		else temp += format[i];
	}
	printf("%c", '\n');
}

DateTime* DateTime::Now() 
{
	time_t* t = new time_t(time(0));
	tm* now = new tm();
	localtime_s(now, t);

	DateTime* dt = new DateTime(now->tm_year + 1900, now->tm_mon + 1, now->tm_mday, now->tm_hour, now->tm_min, now->tm_sec);

	delete t;
	delete now;
	return dt;
}

DateTime* DateTime::FromString(string str) 
{
	DateTime* dt = new DateTime();
	string dateValues[3];
	string timeValues[3];
	int dateCount = 0;
	int timeCount = 0;
	string temp = "";
	char previousSign = '\0';
	str += '\0';

	for (int i = 0; i < str.length(); i++) 
	{
		if (str[i] >= '0' && str[i] <= '9') temp += str[i];
		else if (str[i] == '/') 
		{
			dateValues[dateCount++] = temp;
			previousSign = '/';
			temp.clear();
		}
		else if (str[i] == ':') 
		{
			timeValues[timeCount++] = temp;
			previousSign = ':';
			temp.clear();
		}
		else if (str[i] == ' ' || str[i] == '\0') 
		{
			if (previousSign == '/') dateValues[dateCount++] = temp;
			else if (previousSign == ':') timeValues[timeCount++] = temp;
			temp.clear();
		}
	}

	if (dateValues[2] != "") dt->SetYear(stoi(dateValues[2]));
	if (dateValues[1] != "") dt->SetMonth(stoi(dateValues[1]));
	if (dateValues[0] != "") dt->SetDay(stoi(dateValues[0]));
	if (timeValues[2] != "") dt->SetHours(stoi(timeValues[0]));
	if (timeValues[1] != "") dt->SetMinutes(stoi(timeValues[1]));
	if (timeValues[0] != "") dt->SetSeconds(stoi(timeValues[2]));

	return dt;
}

bool DateTime::IsValid(int year, int month, int day, int hours, int minutes, int seconds)
{
	return seconds >= 0 && seconds < 60 &&
		minutes >= 0 && minutes < 60 &&
		hours >= 0 && hours < 24 &&
		day > 0 && day < 32 &&
		month > 0 && month < 13 &&
		year > 0;
}