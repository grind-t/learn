#pragma once
#include "Node.h"
#include <iostream>
#include <vector>
#include <algorithm>
#include <iterator>
#include <cassert>
using namespace std;

template <typename T>
class BST {
private:
	Node<T>* root;
	int size = 0;

	Node<T>* add(Node<T>* root, Node<T>* n) {
		if (root == nullptr) return n;
		else if (n->key < root->key) root->left = add(root->left, n);
		else root->right = add(root->right, n);
		return root;
	}

	void printLKP(Node<T>* root) const {
		if (!root) return;
		printLKP(root->left);
		cout << root->key << ' ';
		printLKP(root->right);
	}

	void printLPK(Node<T>* root) const {
		if (!root) return;
		printLPK(root->left);
		printLPK(root->right);
		cout << root->key << ' ';
	}

	void printKLP(Node<T>* root) const {
		if (!root) return;
		cout << root->key << ' ';
		printKLP(root->left);
		printKLP(root->right);
	}

	bool remove(Node<T>* parent, Node<T>* current, T key) {
		if (!current) return false;
		if (current->key == key) {
			if (!current->left || !current->right) {
				Node<T>* temp = current->left;
				if (current->right) temp = current->right;
				if (parent) {
					if (parent->left == current) parent->left = temp;
					else parent->right = temp;
				}
				else this->root = temp;
			}
			else {
				Node<T>* validSubs = current->right;
				while (validSubs->left) validSubs = validSubs->left;
				T temp = current->key;
				current->key = validSubs->key;
				validSubs->key = temp;
				return remove(current, current->right, temp);
			}
			delete current;
			return true;
		}
		return remove(current, current->left, key) ||
			remove(current, current->right, key);
	}

	void clear(Node<T>* root) {
		if (!root) return;
		clear(root->left);
		clear(root->right);
		delete root;
	}

	Node<T>* find(Node<T>* n, T key) {
		if (n == nullptr || n->key == key) return n;
		else if (key < n->key) return find(n->left, key);
		else return find(n->right, key);
	}

	void toArray(Node<T>* n, T* arr, int& i) {
		if (!n) return;
		toArray(n->left, arr, i);
		arr[i++] = n->key;
		toArray(n->right, arr, i);
	}

public:
	BST() : root(nullptr) {}
	BST(Node<T>* treeRoot) : root(treeRoot) {}

	void add(Node<T>* n) {
		if (n == nullptr) return;
		size++;
		root = this->add(root, n);
	}

	void printLKP() const {
		printLKP(this->root);
	}

	void printLPK() const {
		printLPK(this->root);
	}

	void printKLP() const {
		printKLP(this->root);
	}

	bool remove(T key) {
		if (this->remove(nullptr, root, key)) {
			size--;
			return true;
		}
		else return false;
	}

	void clear() {
		clear(this->root);
		size = 0;
	}

	Node<T>* find(T key) {
		return find(this->root, key);
	}

	BST<T>* subTree(T key) {
		Node<T>* n = find(key);
		return new BST<T>(n);
	}

	T* toArray() 
	{
		T* arr = new T[size];
		int i = 0;
		toArray(root, arr, i);
		return arr;
	}

	friend ostream& operator<<(ostream& output, const BST<T>& bst) {
		bst.printLKP();
		return output;
	}

	class iterator
	{
	public:
		iterator(T* ptr) : ptr_(ptr) {}
		iterator operator++() { iterator i = *this; ptr_++; return i; }
		iterator operator++(int junk) { ptr_++; return *this; }
		T& operator*() { return *ptr_; }
		T* operator->() { return ptr_; }
		bool operator==(const iterator& rhs) { return *ptr_ == *rhs.ptr_; }
		bool operator!=(const iterator& rhs) { return *ptr_ != *rhs.ptr_; }
	private:
		T* ptr_;
	};

	Node<T>* operator[](T& key)
	{
		return find(key);
	}

	iterator begin()
	{
		return iterator(toArray());
	}

	iterator end()
	{
		return iterator(toArray() + size);
	}
};