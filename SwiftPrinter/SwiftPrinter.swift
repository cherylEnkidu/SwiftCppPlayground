//
//  SwiftPrinter.swift
//  SwiftCppPlayground
//
//  Created by Cheryl Lin on 2024-10-17.
//

import CppPrinter

public struct SwiftPrinter {
    public static func print(_ value : String) {
        // Print the value if applicable.
        _ = Printer(std.string(value))
    }
}
