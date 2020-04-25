#pragma once

template <typename T>
class Node {
public:
	T key;
	Node<T>* left;
	Node<T>* right;

	Node(T k) : key(k), left(nullptr), right(nullptr) {}
	Node(T k, Node<T> l, Node<T> r) : key(k), left(l), right(r) {}
};

template <typename K, typename T>
class InfoNode : public Node<K> {
public:
	T info;
};