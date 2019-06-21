//
//  SampleRepository.swift
//  Domain
//
//  Created by matsumoto on 2019/06/21.
//  Copyright © 2019 zyyx. All rights reserved.
//

import Foundation

public protocol SampleRepository {
    func fetchQiitaPosts() -> Posts
}
