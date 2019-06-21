//
//  Posts.swift
//  Domain
//
//  Created by matsumoto on 2019/06/21.
//  Copyright © 2019 zyyx. All rights reserved.
//

import Foundation

public class Posts {
    public let posts: Array<Post>
    public init() {
        posts = [Post(title: "test"), Post(title: "hoge")]
    }
}

public struct Post {
    public var title: String
}
