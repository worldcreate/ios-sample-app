//
//  QiitaPostsFetchInteractor.swift
//  Domain
//
//  Created by matsumoto on 2019/06/21.
//  Copyright © 2019 zyyx. All rights reserved.
//

import Foundation

public class QiitaPostsFetchInteractor : QiitaPostsFetchUseCase {
    

    let presenter: QiitaPostsFetchPresenter
    let repository: SampleRepository
    public init(presenter: QiitaPostsFetchPresenter, repository: SampleRepository) {
        self.presenter = presenter
        self.repository = repository
    }
    
    public func handler() {
        let posts = repository.fetchQiitaPosts()
        
        let outputDatas = QiitaPostsFetchOutputData(posts: posts.posts.map { QiitaPostsFetchOutputData.Post(title: $0.title) })
        
        presenter.complete(outputData: outputDatas)
    }
    
}
