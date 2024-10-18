//
//  Printer.cc
//  SwiftCppPlayground
//
//  Created by Cheryl Lin on 2024-10-16.
//

#include <iostream>
#include "include/Printer.h"

Printer::Printer(std::string content) {
    std::cout << "ctor runs with value: " << content << std::endl;
}
