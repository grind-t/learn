#pragma once

template<typename T>
class Node {
public:
	T info;
	Node<T>* next;

	Node(const T& inf) : info(inf), next(nullptr) {

	}
};