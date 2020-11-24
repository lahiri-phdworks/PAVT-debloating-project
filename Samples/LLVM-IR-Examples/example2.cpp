#include <iostream>
#include <stdio.h>
#include <vector>

int x = 90;

int main(int argc, char **argv, char **envp)
{
    int b = x >> 8;
    if (b > 90)
    {
        std::cout << b << std::endl;
    }
    else
    {
        std::cout << b + 10 << std::endl;
    }
    return 0;
}