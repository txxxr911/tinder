//
//  MainCoordinatorAssembly.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import Foundation

class MainCoordinatorAssembly: Assembly {
    func build(router: RouterType) -> MainCoordinatorType {
        let coordinator = MainCoordinator(container: container, router: router)
        return coordinator
    }
}
