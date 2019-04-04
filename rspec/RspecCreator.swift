//
//  RspecCreator.swift
//  rspec
//
//  Created by Nikolaj Andersen on 03.04.19.
//  Copyright © 2019 Nikolaj Andersen. All rights reserved.
//

import Foundation

class RspecCreator {
    var originalPath = ""
    
    init(originalPath: String) {
        self.originalPath = originalPath
    }
    
    func filePath() -> String {
        let specPath = self.originalPath.replacingOccurrences(of: "app/", with: "spec/")
        let url = URL(fileURLWithPath: specPath)
        
        return url.relativeString.replacingOccurrences(of: originalFileName(), with: "")
    }
    
    func filePathWithFilename() -> String {
        var path = filePath()
        path.append(fileName())
        return path
    }
    
    func className() -> String {
        return self.originalPath.replacingOccurrences(of: #"app\/\w+\/"#, with: "", options: .regularExpression)
            .replacingOccurrences(of: ".rb", with: "")
            .replacingOccurrences(of: "/", with: "::")
            .split(separator: "_")
            .map { $0.capitalized }
            .joined()
    }
    
    func fileName() -> String {
        let url = URL(fileURLWithPath: self.originalPath)
        
        return url.lastPathComponent.replacingOccurrences(of: ".rb", with: "_spec.rb")
    }
    
    private func originalFileName() -> String {
        let url = URL(fileURLWithPath: self.originalPath)
        
        return url.lastPathComponent
    }
}
