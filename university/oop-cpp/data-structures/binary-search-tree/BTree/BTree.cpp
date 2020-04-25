#include <iostream>
#include <math.h>
#include "BST.h"
using namespace std;

int main() {
	BST<int>* bst = new BST<int>();
	bst->add(new Node<int>(11));
	bst->add(new Node<int>(1));
	bst->add(new Node<int>(6));
	bst->add(new Node<int>(-1));
	bst->add(new Node<int>(-10));
	bst->add(new Node<int>(100));
	cout << *bst << endl;
	for (auto i = bst->begin(); i != bst->end(); i++)
	{
		std::cout << *i << " ";
	}
	/*bst->remove(11);
	cout << "11 removed: " << *bst << endl;
	bst->remove(1);
	cout << "1 removed: ";
	cout << *bst << endl;
	bst->remove(-1);
	cout << "-1 removed: " << *bst << endl;
	bst->remove(6);
	cout << "6 removed: " << *bst << endl;
	bst->remove(-10);
	cout << "-10 removed: " << *bst << endl;
	bst->remove(100);
	cout << "100 removed: " << *bst << endl;*/
	return 0;
}