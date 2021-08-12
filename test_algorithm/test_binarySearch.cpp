// This file is a "Hello, world!" in C++ language by GCC for wandbox.
#include <iostream>
#include <cstdlib>

// return the value whether exists in array or not
bool binarySearch(int array[], int size, int value)
{
    if(array[0] == value)
        return true;
    else if (array[size-1] == value)
        return true;
    else if(array[size/2] == value)
        return true;
    else if (array[0] < value and value < array[size/2])
        return binarySearch(array, size/2, value);
    else if (array[size/2] < value and value < array[size])
        return binarySearch(array+size/2, size/2, value);
    return false;
}

static int position = 0;
int binarySearch2(int array[], int size, int value)
{
    if(array[0] == value)
    {
        std::cout << "begin position = " << position << std::endl;
        return position += 0;
    }
    else if (array[size-1] == value)
    {
        std::cout << "end position = " << position << std::endl;
        return position += size-1;
    }
    else if(array[size/2] == value)
    {
        std::cout << "half position = " << position << std::endl;
        return position += size/2;
    }
    else if (array[0] < value and value < array[size/2])
    {
        std::cout << "small position = " << position << std::endl;
        return position += binarySearch2(array, size/2, value);
    }
    else if (array[size/2] < value and value < array[size])
    {
        std::cout << "big position = " << position << std::endl;
        return position += binarySearch2(array+size/2, size/2, value);
    }
    std::cout << "-1 position = " << position << std::endl;
    return position += -1;
}

int binarySearch1(int array[], int size, int value)
{
    int position = 0;
    position += binarySearch2(array, size, value);
    return position;
}

int binarySearch3(int array[], int low, int high, int target)
{
	int middle = (low + high)/2;
	if(low > high) {
		return -1;
	}
	if(target == array[middle]) {
		return middle;
	}
	if(target < array[middle]) {
		return binarySearch3(array, low, middle-1, target);
	}
	if(target > array[middle]) {
		return binarySearch3(array, middle+1, high, target);
	} 
    return -1;
}

int binarySearch4(int array[], int size, int value)
{
    if (array[0] == value)
        return 0;
    else if (array[size-1] == value)
        return size - 1;
    else if (array[size/2] == value)
        return size/2;
    else
    {
        int begin = 0;
        int end = size-1;
        int mid = size/2;
        while(begin < end)
        {
            std::cout << "begin=" << begin << ", mid=" << mid << ", end=" << end << std::endl;
            if(value < array[mid])
            {
                end = mid;
                mid = (begin + mid)/2;
            }
            else if (value > array[mid])
            {
                begin = mid;
                mid = (mid + end)/2;
            }
            else if (value == array[mid])
                return mid;
        }
    }
    return -1;
}

int binarySearch5(int array[], int n, int target)
{
	int low = 0, high = n, middle = 0;
	while(low < high) {
		middle = (low + high)/2;
		if(target == array[middle]) {
			return middle;
		} else if(target < array[middle]) {
			high = middle;
		} else if(target > array[middle]) {
			low = middle + 1;
		}
	}
	return -1;
}
int main()
{
    std::cout << "Hello, Wandbox!" << std::endl;
    int array[100];
    for (int i=0; i< 100; i++)
        array[i] = i;
    int index38 = binarySearch(array, 100, 38);
    std::cout << "binarySearch index38 = " << index38 << std::endl;
    int index138 = binarySearch(array, 100, 138);
    std::cout << "binarySearch index138 = " << index138 << std::endl;
    std::cout << "-------------" << std::endl;
    int position38 = binarySearch2(array, 100, 38);
    std::cout << "binarySearch position38 = " << position38 << std::endl;
    std::cout << "-------------" << std::endl;
    int position39 = binarySearch3(array, 0, 100, 39);
    std::cout << "binarySearch position39 = " << position39 << std::endl;
    int position73 = binarySearch3(array, 0, 100, 73);
    std::cout << "binarySearch position73 = " << position73 << std::endl;
    int position139 = binarySearch3(array, 0, 100, 139);
    std::cout << "binarySearch position139 = " << position139 << std::endl;
    std::cout << "-------------" << std::endl;
    int position40 = binarySearch5(array, 100, 40);
    std::cout << "binarySearch position40 = " << position40 << std::endl;
    int position80 = binarySearch5(array, 100, 80);
    std::cout << "binarySearch position80 = " << position80 << std::endl;
    int position140 = binarySearch5(array, 100, 140);
    std::cout << "binarySearch position140 = " << position140 << std::endl;
}

// GCC reference:
//   https://gcc.gnu.org/

// C++ language references:
//   https://cppreference.com/
//   https://isocpp.org/
//   http://www.open-std.org/jtc1/sc22/wg21/

// Boost libraries references:
//   https://www.boost.org/doc/
