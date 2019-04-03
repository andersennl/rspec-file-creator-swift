//
//  main.swift
//  rspec
//
//  Created by Nikolaj Andersen on 03.04.19.
//  Copyright © 2019 Nikolaj Andersen. All rights reserved.
//

import Foundation

guard let filePath = CommandLine.arguments.last else {
    throw MyError.runtimeError("No correct path passed.")
}

let creator = RspecCreator(originalPath: filePath)

//let dir = FileManager.default.createFile(atPath: creator.filePathWithFilename(), contents: <#T##Data?#>, attributes: <#T##[FileAttributeKey : Any]?#>)

let fileContent = ""
let path = URL.init(fileURLWithPath: "/Users/andersennl/Desktop/test/example.rb")

do {
    try fileContent.write(to: path, atomically: false, encoding: .utf8)
}
catch {
    print("Didn't work")
}
