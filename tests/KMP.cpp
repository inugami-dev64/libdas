
// INPUT: on line one first string and on line two the search string
// OUTPUT: single integer describing the search string occurence in the first string
#include <iostream>
#include <vector>
#include <string>

#include <Api.h>
#include <Algorithm.h>


int main() {
    std::string str, search;
    std::getline(std::cin, str);
    std::getline(std::cin, search);


    std::vector<size_t> occurences = Libdas::Algorithm::FindSubstringInstances(str, search);

    for(size_t i : occurences) {
        std::cout << i << " ";
    }

    std::cout << std::endl;
    return 0;
}
