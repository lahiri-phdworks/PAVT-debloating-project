#include <iostream>
#include <stdio.h>
#include <vector>
#include <string>

int main(int argc, char **argv, char **envp)
{
    std::string str = "Hello World";
    for (const char a : str)
    {
        std::cout << a << std::endl;
    }
    return 0;
}