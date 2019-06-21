//
//  Sub1Presenter.swift
//  HelloWorld
//
//  Created by matsumoto on 2019/06/21.
//  Copyright © 2019 zyyx. All rights reserved.
//

import Foundation
import Domain

class Sub1Presenter : QiitaPostsFetchPresenter {
    weak var viewModel: Sub1ViewController?
    init(viewModel: Sub1ViewController) {
        self.viewModel = viewModel
    }
    
    func complete(outputData: QiitaPostsFetchOutputData) {
        viewModel?.setPosts(outputs: outputData)
    }
}
