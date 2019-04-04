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

//let testPath = "app/services/network/contacts/shorten_long_social_media_urls.rb"
let creator = RspecCreator(originalPath: filePath)

let fileContent = "require \"spec_helper\"\n\ndescribe \(creator.className()) do\n\nend"

do {
    try FileManager.default.createDirectory(atPath: creator.filePath(), withIntermediateDirectories: true, attributes: nil)
    try fileContent.write(toFile: creator.filePathWithFilename(), atomically: false, encoding: .utf8);
    print(creator.filePathWithFilename() + " created.")
}
catch {
    print("Didn't work")
    print(error.localizedDescription)
}
