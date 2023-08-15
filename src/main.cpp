#include <iostream>
#include "factorial.h"

int main()
{
	long previous = 1;
	long twoItemsAgo = 0;
	for (int i = 0; i < 50; i++)
	{
		long temp = previous;
		previous = temp + twoItemsAgo;
		twoItemsAgo = temp;
		std::cout << "Fibonacci number " << i + 1 << ": " << previous << std::endl;
	}
	std::cout << "Recursive Factorial of 6: " << factorial(6) << std::endl;
	return 0;
}