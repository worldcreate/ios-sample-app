//
//  QiitaPostsFetchUseCase.swift
//  Domain
//
//  Created by matsumoto on 2019/06/21.
//  Copyright © 2019 zyyx. All rights reserved.
//

import Foundation

public protocol QiitaPostsFetchUseCase {
    func handler()
}

public struct QiitaPostsFetchOutputData {
    public let posts: Array<Post>
    
    public struct Post {
        public let title: String
    }

}

