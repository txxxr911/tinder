//
//  StartAssembly.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import UIKit

typealias StartModule = Module<StartModuleInput, StartModuleOutput>

class StartAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> StartModule {
        // View
        let view = StartViewController.controllerFromStoryboard("Start")
        
        // Interactor
        let interactor = StartInteractor()
        
        // Router
        let router = StartRouter(coordinator: coordinator)
        
        // Presenter
        let presenter = StartPresenter(interactor: interactor, router: router)
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
