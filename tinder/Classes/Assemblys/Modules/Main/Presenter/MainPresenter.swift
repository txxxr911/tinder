//
//  MainPresenter.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import Foundation

class MainPresenter: BasePresenter<MainInteractorInput, MainRouterProtocol>, MainModuleOutput {
    // MARK: - Weak properties
    weak var view: MainViewInput?
}

// MARK: Private
extension MainPresenter {
    
}

// MARK: Module Input
extension MainPresenter: MainModuleInput {
    
}

// MARK: View Output
extension MainPresenter: MainViewOutput {
    func viewDidLoad() {
        view?.set(title: "Main")
    }
}
