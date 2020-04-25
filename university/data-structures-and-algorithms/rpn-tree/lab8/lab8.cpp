// lab8.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include <iostream>
#include <string>
#include <stack>
using namespace std;

struct Tree;
typedef Tree* pTree;
struct Tree 
{
	// Корень дерева или его значение.
	char root;
	// Указатель на лево ответвление.
	pTree left;
	// Указатель на правое ответвление.
	pTree right;
};

// Создание нового дерева с левым и правым ответвлением.
pTree Create(pTree left, char root, pTree right) 
{
	pTree p = new Tree;
	p->root = root;
	p->left = left;
	p->right = right;
	return p;
}

// Ввод арифметического значения в двоичное дерево.
pTree Input(string s) 
{
	if (s.length() == 1) 
	{
		return Create(nullptr, s[0], nullptr); // Пень.
	}

	pTree q; // Новое дерево.
	int balance = 0; // Баланс скобок.
	string leftOperand = ""; // Левый операнд.
	int operatorIndex = 0; // Индекс оператора.
	string rightOperand = ""; // Правый операнд.

	s = s.substr(1, s.length() - 2); // Удаление левой и правой скобки.

	// Поиск индекса оператора в строке с учетом баланса скобок.
	for (int i = 0; i < s.length(); i++) 
	{
		if (s[i] == '(') balance++;
		else if (s[i] == ')') balance--;
		else if (balance == 0 && (s[i] == '+' || s[i] == '-' || s[i] == '*' || s[i] == '/')) operatorIndex = i;
	}
	
	leftOperand = s.substr(0, operatorIndex); // Выделение левого операнда из строки.
	rightOperand = s.substr(operatorIndex + 1, s.length() - 1); // Выделение правого операнда из строки.

	q = Create(Input(leftOperand), s[operatorIndex], Input(rightOperand)); // Создание дерева рекурсивно.
	return q;
}

// Распечатка значений через обход двоичного дерева методом ЛКП.
void Print(pTree p) 
{
	if (p != nullptr) 
	{
		if (p->left != nullptr) cout << '(';
		Print(p->left);
		cout << p->root;
		Print(p->right);
		if (p->right != nullptr) cout << ')';
	}
}

// Получение Обратной Польской Нотации (Reverse Polish Notation) через обход дерева методом ЛПК.
string RPN(pTree p) 
{
	string s = "";
	if (p != nullptr) 
	{
		s += RPN(p->left);
		s += RPN(p->right);
		s += p->root;
	}
	return s;
}

// Вычисление обратной польской нотации через стек.
int Calc(string rpn) 
{
	stack<int> st;

	for (int i = 0; i < rpn.length(); i++) 
	{
		int leftOperand = 0;
		int rightOperand = 0;

		switch (rpn[i]) 
		{
		case '+':
			leftOperand = st.top();
			st.pop();
			rightOperand = st.top();
			st.pop();

			st.push(leftOperand + rightOperand);
			break;
		case '-':
			leftOperand = st.top();
			st.pop();
			rightOperand = st.top();
			st.pop();

			st.push(leftOperand - rightOperand);
			break;
		case '*':
			leftOperand = st.top();
			st.pop();
			rightOperand = st.top();
			st.pop();

			st.push(leftOperand * rightOperand);
			break;
		case '/':
			leftOperand = st.top();
			st.pop();
			rightOperand = st.top();
			st.pop();

			st.push(leftOperand / rightOperand);
			break;
		default:
			st.push(rpn[i] - '0');
			break;
		}
	}

	return st.top();
}

int main()
{
	pTree p;
	string s;
	cin >> s;
	p = Input(s);
	string rpn = RPN(p);
	Print(p); cout << endl;
	cout << rpn << endl;
	//cout << Calc(rpn) << endl;
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
