//
//  StartRouter.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import Foundation

class StartRouter: BaseModuleRouter, StartRouterProtocol {
    
    func navigateToMainView() {
        let module = container.resolve(MainAssembly.self).build(coordinator: coordinator)
        coordinator.router.setRootModule(module)
    }
    
    func navigateToSignUpView() {
        
    }
    
}
