// lab9.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include <iostream>
#include <clocale>
#include <string>
using namespace std;

// Меняет местами значения массива по индексам.
void Swap(int* arr, int leftIndex, int rightIndex) 
{
	if (leftIndex != rightIndex) 
	{
		int temp = arr[leftIndex];
		arr[leftIndex] = arr[rightIndex];
		arr[rightIndex] = temp;
	}
}

// Превращает массив в строку.
string ToString(int* arr, int length) 
{
	string str;
	str += "[";
	for (int i = 0; i < length - 1; i++) str += to_string(arr[i]) + ", ";
	str += to_string(arr[length - 1]) + "]";
	return str;
}

// Сортировка пузырьком.
void BubbleSort(int* arr, int length) 
{
	bool swapped; // Были ли перестановки в массиве при прошлом проходе массива.
	int operationsCount = 0; // Количество операций, произведенных алгоритмом (для вывода работы алгоритма в консоль).

	// Пока в предыдущем проходе происходят перестановки.
	do 
	{
		swapped = false;

		// Перебор массива.
		for (int i = 1; i < length; i++) 
		{
			// Если предыдущий элемент больше текущего.
			if (arr[i - 1] > arr[i]) 
			{
				// Меняем их местами.
				Swap(arr, i - 1, i);
				swapped = true;

				// Распечатка работы алгоритма в консоли.
				cout << ++operationsCount << " операция(меняем местами " << arr[i] << " и " << arr[i - 1] << "): " << ToString(arr, length) << endl;
			}
		}
	} while (swapped != false);
}

// Сортировка вставками.
void InsertionSort(int* arr, int length) 
{
	int unsorted = 1; // Индекс начала неотсортированной части массива.
	int operationsCount = 0; // Количество операций, произведенных алгоритмом (для вывода работы алгоритма в консоль).

	// Цикл работает пока осталась неотсортированная часть массива.
	while (unsorted < length) 
	{
		// Если неотсортированный элемент меньше последнего отсортированного.
		if (arr[unsorted] < arr[unsorted - 1]) 
		{
			// Поиск индекса для вставки неотстортированного элемента.
			for (int i = 0; i < length; i++) 
			{
				// Если элемента массива больше неотсортированного элемента, то надо вставить неотсортированный элемент в это место.
				if (arr[i] > arr[unsorted]) 
				{			
					// Вставка неотсортированного элемента в массив и сдвиг части массива вправо.
					int temp = arr[i];
					arr[i] = arr[unsorted];
					for (int current = unsorted; current > i; current--) arr[current] = arr[current - 1];
					arr[i + 1] = temp;

					// Распечатка работы алгоритма в консоли.
					cout << ++operationsCount << " операция(вставляем " << arr[i] << " на место " << arr[i + 1] << "): " << ToString(arr, length) << endl;

					break;
				}
			}
		}

		unsorted++;
	}
}

// Сортировка выбором.
void SelectionSort(int* arr, int length) 
{
	int unsorted = 0; // Индекс начала несортированной части массива.
	int operationsCount = 0; // Количество операций, произведенных алгоритмом (для вывода работы алгоритма в консоль).

	// Цикл работает пока осталась неотсортированная часть массива.
	while (unsorted < length) 
	{
		// Поиск наименьшего значения в неотсортированной части массива.
		int currentSmallest = arr[unsorted];
		int currentSmallestIndex = unsorted; 
		for (int i = unsorted + 1; i < length; i++) 
		{
			if (currentSmallest > arr[i]) 
			{
				currentSmallest = arr[i];
				currentSmallestIndex = i;
			}
		}

		// Первое число неотсортированного массива меняется местами с наименьшим числом неотсортиованного массива.
		Swap(arr, unsorted, currentSmallestIndex);
		// Распечатка работы алгоритма в консоли.
		cout << ++operationsCount << " операция(меняем местами " << arr[currentSmallestIndex] << " и " << arr[unsorted] << "): " << ToString(arr, length) << endl;
		// Индекс начального элемента неотсортированного массива увеличился на 1.
		unsorted++;
	}
}

// Сортировка слиянием.
void MergeSort(int* arr, int length, int& operationsCount) 
{
	// Массив уже отсортирован.
	if (length <= 1) return;

	int leftSize = length / 2;
	int rightSize = length - leftSize;
	int* leftArr = new int[leftSize];
	int* rightArr = new int[rightSize];
	for (int i = 0; i < leftSize; i++) leftArr[i] = arr[i];
	for (int i = 0; i < rightSize; i++) rightArr[i] = arr[i + leftSize];
	MergeSort(leftArr, leftSize, operationsCount);
	MergeSort(rightArr, rightSize, operationsCount);

	int leftIndex = 0;
	int rightIndex = 0;
	int targetIndex = 0;
	int remaining = leftSize + rightSize;
	while (remaining > 0) 
	{
		if (leftIndex >= leftSize) 
		{
			arr[targetIndex] = rightArr[rightIndex++];
		}
		else if (rightIndex >= rightSize) 
		{
			arr[targetIndex] = leftArr[leftIndex++];
		}
		else if (leftArr[leftIndex] < rightArr[rightIndex]) 
		{
			arr[targetIndex] = leftArr[leftIndex++];
		}
		else 
		{
			arr[targetIndex] = rightArr[rightIndex++];
		}

		targetIndex++;
		remaining--;
	}

	// Распечатка работы алгоритма в консоли.
	cout << ++operationsCount << " операция(соединяем " << ToString(leftArr, leftSize) << " и " << ToString(rightArr, rightSize) << "): " << ToString(arr, length) << endl;
}

// Быстрая сортировка.
void QuickSort(int* arr, int left, int right, int length, int& operationsCount) 
{
	if (left < right) 
	{
		int pivotIndex = left + rand() % right;
		int pivotValue = arr[pivotIndex];

		Swap(arr, pivotIndex, right);

		int storeIndex = left;
		for (int i = left; i < right; i++) 
		{
			if (arr[i] < pivotValue) 
			{
				Swap(arr, i, storeIndex);
				storeIndex += 1;
			}
		}

		Swap(arr, storeIndex, right);

		cout << ++operationsCount << " операция(переносим значения < " << pivotValue << " влево, a > " << pivotValue << " вправо): " << ToString(arr, length) << endl;

		QuickSort(arr, left, storeIndex - 1, length, operationsCount);
		QuickSort(arr, storeIndex + 1, right, length, operationsCount);
	}
}

int main()
{
	setlocale(0, "");

	int* bubbleSortedArr;
	int* insertionSortedArr;
	int* selectionSortedArr;
	int* mergeSortedArr;
	int* quickSortedArr;
	int length;

	// Ввод длины массива с консоли.
	cout << "Введите длину массива: ";
	cin >> length;

	// Инициализация массивов.
	bubbleSortedArr = new int[length];
	insertionSortedArr = new int[length];
	selectionSortedArr = new int[length];
	mergeSortedArr = new int[length];
	quickSortedArr = new int[length];

	// Ввод значений массивов.
	for (int i = 0; i < length; i++) 
	{
		int input;
		cout << "Элемент массива[" << i << "]" << " = ";
		cin >> input;
		quickSortedArr[i] = mergeSortedArr[i] = selectionSortedArr[i] = insertionSortedArr[i] = bubbleSortedArr[i] = input;
	}
	cout << endl;

	// Сортировка пузырьком.
	cout << "Сортировка пузырьком:" << endl;
	cout << "Исходный массив: " << ToString(bubbleSortedArr, length) << endl;
	BubbleSort(bubbleSortedArr, length);
	cout << "Результат: " << ToString(bubbleSortedArr, length) << endl << endl;

	// Сортировка вставками.
	cout << "Сортировка вставками:" << endl;
	cout << "Исходный массив: " << ToString(insertionSortedArr, length) << endl;
	InsertionSort(insertionSortedArr, length);
	cout << "Результат: " << ToString(insertionSortedArr, length) << endl << endl;

	// Сортировка выбором.
	cout << "Сортировка выбором:" << endl;
	cout << "Исходный массив: " << ToString(selectionSortedArr, length) << endl;
	SelectionSort(selectionSortedArr, length);
	cout << "Результат: " << ToString(selectionSortedArr, length) << endl << endl;

	// Сортировка слиянием.
	cout << "Сортировка слиянием:" << endl;
	cout << "Исходный массив: " << ToString(mergeSortedArr, length) << endl;
	int operationsCount = 0;
	MergeSort(mergeSortedArr, length, operationsCount);
	cout << "Результат: " << ToString(mergeSortedArr, length) << endl << endl;

	// Быстрая сортировка.
	cout << "Быстрая сортировка:" << endl;
	cout << "Исходный массив: " << ToString(quickSortedArr, length) << endl;
	operationsCount = 0;
	QuickSort(quickSortedArr, 0, length - 1, length, operationsCount);
	cout << "Результат: " << ToString(quickSortedArr, length) << endl << endl;
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
