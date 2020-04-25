#pragma once
#define _CRT_SECURE_NO_WARNINGS 

class MyPAV 
{
private:
	char* p;
public:
	MyPAV(char*);
	void Show();
	char* Postfix();
};