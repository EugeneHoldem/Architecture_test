//
//  FeedLoader.swift
//  ArchitectualTest
//
//  Created by Eugene Henyk on 12/23/18.
//  Copyright © 2018 Babysits B.V. All rights reserved.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
