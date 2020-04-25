#pragma once

template <typename T>
class Node {
public:
	T key;
	Node<T>* left;
	Node<T>* right;

	Node(const T& k) : key(k), left(nullptr), right(nullptr) {}
};

template <typename K, typename T>
class InfoNode : public Node<K> {
public:
	T info;

	InfoNode(const K& key, const T& inf) : Node<K>(key), info(inf) {}
};