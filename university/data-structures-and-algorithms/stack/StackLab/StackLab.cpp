// StackLab.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//
#include <cassert> // для assert
#include <iostream>
#include <string>

using namespace std;

class Stack
{
private:
	int* pstack; // массив стека
	const int size; // максимальное количество элементов в стеке
	int top; // индекс головы
public:
	Stack(int = 10); // по умолчанию размер стека равен 10 элементам
	Stack(const Stack&); // конструктор копирования
	~Stack(); // деструктор

	inline void push(const int); // добавляем элемент в вершину стека
	inline int pop(); // удалить элемент из вершины стека и вернуть его
	inline void printStack(); // пе на экран
	inline const int Peek(int) const; // n-й элемент от вершины стека
	inline int getStackSize() const; // получить размер стека
	inline int* pget() const; // получить указатель на стек
	inline int getTop() const; // получить номер текущего элемента в стеке
	inline bool isEmpty() const;
};


// конструктор Стека
Stack::Stack(int maxSize) :
	size(maxSize) // инициализация константы
{
	pstack = new int[size]; // выделить память под стек
	top = 0; // инициализируем текущий элемент нулем;
}

// конструктор копирования
Stack::Stack(const Stack& otherStack) :
	size(otherStack.getStackSize()) // инициализация константы
{
	pstack = new int[size]; // выделить память под новый стек
	top = otherStack.getTop();

	for (int ix = 0; ix < top; ix++)
		pstack[ix] = otherStack.pget()[ix];
}

// функция деструктора Стека
Stack::~Stack()
{
	delete[] pstack; // удаляем стек
}

// функция добавления элемента в стек
inline void Stack::push(const int value)
{
	// проверяем размер стека
	assert(top < size); // номер текущего элемента должен быть меньше размера стека
	pstack[top++] = value; // помещаем элемент в стек
}

// функция удаления элемента из стека
inline int Stack::pop()
{
	// проверяем размер стека
	assert(top > 0); // номер текущего элемента должен быть больше 0
	top--; // удаляем элемент из стека
	return pstack[top + 1];
}

// функция возвращает n-й элемент от вершины стека
inline const int Stack::Peek(int nom) const
{
	//
	assert(nom <= top);

	return pstack[top - nom]; // вернуть n-й элемент стека
}

// Вывод стека на экран
inline void Stack::printStack()
{
	for (int ix = top - 1; ix >= 0; ix--)
		cout << pstack[ix] << " ";
	cout << endl;
}

// вернуть размер стека
inline int Stack::getStackSize() const
{
	return size;
}

// вернуть указатель на стек (для конструктора копирования)
inline int* Stack::pget() const
{
	return pstack;
}

// вернуть размер стека
inline int Stack::getTop() const
{
	return top;
}

inline bool Stack::isEmpty() const
{
	if (getTop() == 0)
	{
		return true;
	}
	return false;
}


int main()
{
	setlocale(0, "");

	int size;
	int elem = 0;

	cout << "Введите размер стека: ";
	cin >> size;

	Stack stack(size);

	for (int i = 0; i < size; i++) 
	{
		string input;
		cout << "Добавьте элемент в стек или введите exit для выхода: ";
		cin >> input;
		if (input == "exit") break;
		else stack.push(stoi(input));
	}

	cout << endl;
	stack.printStack(); // печать стека

	cout << "Удалим элемент из стека\n";
	stack.pop();
	stack.printStack(); // печать стека

	

	//Создаём пустой стек
	Stack EmptyStack(0);
	cout << "Пустой стек создан" << endl;
	EmptyStack.printStack();

	Stack newStack(stack);
	cout << "\n\nРабота конструктора копирования!\n";
	newStack.printStack();
	cout << endl;
	//Проверим стеки на пустоту, удалив все элементы.
	int count = newStack.getTop();
	for (int i = 0; i < count; i++) newStack.pop();
	(newStack.isEmpty()) ? cout << "Стек пустой" : cout << "Стек не пустой";
	cout << endl;
	newStack.printStack();


	//cout « "Второй в очереди элемент: " « newStack.Peek(2) « endl;
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
