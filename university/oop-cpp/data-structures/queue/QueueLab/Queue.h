#pragma once
#include "Node.h"
#include <iostream>
using namespace std;

template<typename T>
class Queue {
private:
	Node<T>* head;
	Node<T>* tail;

public:
	Queue() : head(nullptr), tail(nullptr) {

	}

	~Queue() {
		while (!isEmpty()) pop();
	}

	T& front() const {
		return head->info;
	}

	T& back() const {
		return tail->info;
	}

	void push(const T& value) {
		if (isEmpty()) head = tail = new Node<T>(value);
		else if (head == tail) {
			tail = new Node<T>(value);
			head->next = tail;
		}
		else {
			tail->next = new Node<T>(value);
			tail = tail->next;
		}
	}

	void pop() {
		if (isEmpty()) return;

		Node<T>* h = head;
		if (head == tail) head = tail = nullptr;
		else head = head->next;
		delete h;
	}

	bool isEmpty() const {
		return head == nullptr;
	}

	friend ostream& operator<< (ostream& output, const Queue<T>& q) {
		Node<T>* current = q.head;
		while (current != nullptr) {
			output << current->info << " ";
			current = current->next;
		}
		return output;
	}
};