//
//  SampleService.swift
//  Service
//
//  Created by matsumoto on 2019/06/21.
//  Copyright © 2019 zyyx. All rights reserved.
//

import Foundation
import Domain

public class SampleService : SampleRepository {
    public init() {
        
    }
    public func fetchQiitaPosts() -> Posts {
        return Posts()
    }
}
