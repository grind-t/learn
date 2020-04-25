#pragma once
#include <vector>
#include "Node.h"
#include "BST.h"
#include <string>
using namespace std;

template <typename K, typename T>
class Table {
private:
	BST<K>* tree;

public:
	Table() : tree(new BST<K>()) {}
	~Table() { 
		clear(); 
		delete tree;
	}

	T& find(const K& key) { 
		InfoNode<K, T>* n = (InfoNode<K, T>*)tree->find(key);
		if (n == nullptr) throw - 10;
		else return n->info;
	}

	void add(const K& key, const T& value) {
		InfoNode<K, T>* n = new InfoNode<K, T>(key, value);
		tree->add(n);
	}

	string toJSON() {
		vector<Node<K>>* n = tree->nodes();
		string str = "{\n";
		for (int i = 0; i < n->size(); i++) {
			Node<K> iNode = n->at(i);
			string key(iNode.key);
			string info = to_string(find(iNode.key));
			str += key + ": " + info + "\n";
		}
		str += "}\n";
		return str;
	}

	vector<K>* keys() { 
		vector<K>* k = new vector<K>();
		vector<Node<K>>* n = tree->nodes();
		for (int i = 0; i < n->size(); i++) k->push_back(n->at(i).key);
		return k;
	}

	void remove(const K& key) { tree->remove(key); }

	void clear() {
		tree->clear();
	}

	int size() { 
		vector<Node<K>*>* n = tree->nodes();
		int s = n->size();
		delete n;
		return s; 
	}

	T& operator[](const K& i) { return find(i); }
};