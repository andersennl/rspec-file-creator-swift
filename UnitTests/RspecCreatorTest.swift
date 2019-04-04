//
//  RspecCreatorTest.swift
//  UnitTests
//
//  Created by Nikolaj Andersen on 03.04.19.
//  Copyright © 2019 Nikolaj Andersen. All rights reserved.
//

import XCTest

class RspecCreatorTest: XCTestCase {
    let creator = RspecCreator(originalPath: "app/services/network/contacts/shorten_long_social_media_urls.rb")
    
    func testFilePath() {
        let expected = "spec/services/network/contacts/"
        
        XCTAssertEqual(creator.filePath(), expected)
    }
    
    func testClassName() {
        let expected = "Network::Contacts::ShortenLongSocialMediaUrls"
        
        XCTAssertEqual(creator.className(), expected)
    }
    
    func testFileName() {
        let expected = "shorten_long_social_media_urls_spec.rb"
        
        XCTAssertEqual(creator.fileName(), expected)
    }
}
