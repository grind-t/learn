#pragma once
#include "pch.h"
#include <iostream>

struct Node
{
	char c;
	Node* previous;
	Node* next;
	
	Node() 
	{
		c = NULL;
		previous = next = NULL;
	}

	Node(char c) 
	{
		this->c = c;
		previous = next = NULL;
	}
};