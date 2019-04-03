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
        
        let name = fileName()
        return url.relativeString.replacingOccurrences(of: name, with: "")
    }
    
    func fileName() -> String {
        let url = URL(fileURLWithPath: self.originalPath)
        
        return url.lastPathComponent
    }
    
    func filePathWithFilename() -> String {
        var path = filePath()
        path.append(fileName())
        return path
    }
}
