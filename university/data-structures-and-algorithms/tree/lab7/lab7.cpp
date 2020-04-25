// lab7.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include <iostream>
#include <string>
using namespace std;

struct Tree;
typedef Tree* pTree;
struct Tree
{
	int root;
	pTree left, right;
};

// Добавление узла в дерево.
pTree add(pTree p, int i) 
{
	if (p == nullptr) 
	{
		p = new Tree();
		p->root = i;
		p->left = p->right = nullptr;
	}
	else 
	{
		if (i < p->root) p->left = add(p->left, i);
		else if (i > p->root) p->right = add(p->right, i);
	}

	return p;
}

// Найти узел с заданной информационной частью в дереве.
pTree find(pTree p, int i) 
{
	if (p == nullptr) return nullptr; // Элемент не найден.
	else 
	{
		if (p->root == i) return p;
		else if (i < p->root) return find(p->left, i);
		else return find(p->right, i);
	}
}

// Распечатка данных в порядке возрастания (обход ЛКП).
void print(pTree p) 
{
	if (p != nullptr) 
	{
		print(p->left);
		cout << p->root << endl;
		print(p->right);
	}
}

int main()
{
	pTree p = nullptr;

	// Заполнение дерева двоичного поиска с клавиатуры.
	while (true) 
	{
		string input;
		cout << "Enter root: ";
		cin >> input;
		cin.clear();
		if (input == "e") break;
		else p = add(p, stoi(input));
	}

	print(p);
}

// Запуск программы: CTRL+F5 или меню "Отладка" > "Запуск без отладки"
// Отладка программы: F5 или меню "Отладка" > "Запустить отладку"

// Советы по началу работы 
//   1. В окне обозревателя решений можно добавлять файлы и управлять ими.
//   2. В окне Team Explorer можно подключиться к системе управления версиями.
//   3. В окне "Выходные данные" можно просматривать выходные данные сборки и другие сообщения.
//   4. В окне "Список ошибок" можно просматривать ошибки.
//   5. Последовательно выберите пункты меню "Проект" > "Добавить новый элемент", чтобы создать файлы кода, или "Проект" > "Добавить существующий элемент", чтобы добавить в проект существующие файлы кода.
//   6. Чтобы снова открыть этот проект позже, выберите пункты меню "Файл" > "Открыть" > "Проект" и выберите SLN-файл.
