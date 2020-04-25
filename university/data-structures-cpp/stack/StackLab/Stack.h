#pragma once
#include <iostream>
#include <string>
using namespace std;

template<typename T>
class Stack {
private:
	T* items; // Массив с элементами.
	int length; // Количество элементов в массиве.
	int size; // Максимальное количество элементов в массиве.

	// Рост массива.
	void resize(int newSize) {
		size = newSize;
		T* tempItems = new T[newSize];
		for (int i = 0; i < length; i++) tempItems[i] = items[i];
		delete[] items;
		items = tempItems;
	}

public:
	Stack() : items(new T[10]), length(0), size(10) {

	}

	~Stack() {
		cout << "destructor" << endl;
		delete[] items;
	}

	void push(const T& e) {
		if (length == size) resize(length + 10);
		items[length++] = e;
	}

	T pop() {
		if (isEmpty()) throw 228;

		T item = items[--length];
		if (size > 0 && size < length - 10) resize(length - 10);

		return item;
	}

	T peek() const {
		return items[length - 1];
	}

	bool isEmpty() {
		return length == 0;
	}

	friend ostream& operator<<(ostream& output, const Stack<T>& s) {
		for (int i = 0; i < s.length; i++) output << to_string(s.items[i]) + " ";
		return output;
	}
};