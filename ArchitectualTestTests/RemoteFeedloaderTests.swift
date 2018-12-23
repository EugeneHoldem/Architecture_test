//
//  RemoteFeedloaderTests.swift
//  ArchitectualTestTests
//
//  Created by Eugene Henyk on 12/24/18.
//  Copyright © 2018 Babysits B.V. All rights reserved.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://some-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    private init() {}
    
    var requestedURL: URL?
}

class RemoteFeedloaderTests: XCTestCase {
   
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
}
