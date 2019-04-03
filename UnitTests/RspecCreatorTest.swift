//
//  RspecCreatorTest.swift
//  UnitTests
//
//  Created by Nikolaj Andersen on 03.04.19.
//  Copyright © 2019 Nikolaj Andersen. All rights reserved.
//

import XCTest

class RspecCreatorTest: XCTestCase {

    let originalPath = "app/services/network/contacts/shorten_long_social_media_urls.rb"
    
    func testFilePath() {
        let expected = "spec/services/network/contacts/"
        let creator = RspecCreator(originalPath: originalPath)
        
        XCTAssertEqual(creator.filePath(), expected)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testFileName() {
        let expected = "shorten_long_social_media_urls.rb"
        let creator = RspecCreator(originalPath: originalPath)
        
        XCTAssertEqual(creator.fileName(), expected)
    }

}
