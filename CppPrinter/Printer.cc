//
//  Printer.cc
//  SwiftCppPlayground
//
//  Created by Cheryl Lin on 2024-10-16.
//

#include "include/Printer.h"
#include <iostream>

Printer::Printer(std::string content) {
  std::cout << "ctor runs with value: " << content << std::endl;
}
