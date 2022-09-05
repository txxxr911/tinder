//
//  BasePresenter.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import Foundation

class BasePresenter<I, R> {
    let interactor: I
    let router: R
    
    init(interactor: I, router: R) {
        self.interactor = interactor
        self.router = router
    }
}
