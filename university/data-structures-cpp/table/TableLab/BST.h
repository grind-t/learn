#pragma once
#include "Node.h"
#include <iostream>
using namespace std;

template <typename T>
class BST {
private:
	Node<T>* root;

	Node<T>* add(Node<T>* root, Node<T>* n) {
		if (root == nullptr || root->key == n->key) return n;
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

	bool remove(Node<T>* parent, Node<T>* current, const T& key) {
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

	Node<T>* find(Node<T>* root, const T& key) {
		if (root == nullptr || root->key == key) return root;
		else if (key < root->key) return find(root->left, key);
		else return find(root->right, key);
	}

	void nodes(Node<T>* root, vector<Node<T>>* v) {
		if (!root) return;
		nodes(root->left, v);
		v->push_back(*root);
		nodes(root->right, v);
	}

public:
	BST() : root(nullptr) {}
	BST(Node<T>* treeRoot) : root(treeRoot) {}
	~BST() { clear(); }

	void add(Node<T>* n) { root = add(root, n); }

	void printLKP() const { printLKP(root); }
	void printLPK() const { printLPK(root); }
	void printKLP() const { printKLP(root); }

	bool remove(const T& key) { return remove(nullptr, root, key); }

	void clear() {
		clear(root);
		root = nullptr;
	}

	Node<T>* find(const T& key) { return find(root, key); }

	BST<T>* subTree(const T& key) {
		Node<T>* n = find(key);
		return new BST<T>(n);
	}

	vector<Node<T>>* nodes() {
		vector<Node<T>>* v = new vector<Node<T>>();
		nodes(root, v);
		return v;
	}

	friend ostream& operator<<(ostream& output, const BST<T>& bst) {
		bst.printKLP();
		return output;
	}
};