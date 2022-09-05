//
//  MainContracts.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import UIKit

// Module Input
protocol MainModuleInput {
    
}

// Module Output
protocol MainModuleOutput: ModuleOutput {
    
}

// View Input
protocol MainViewInput: AnyObject {
    func set(title: String)
}

// View Output
protocol MainViewOutput: AnyObject {
    func viewDidLoad()
}

// Interactor
protocol MainInteractorInput {

}

// Router
protocol MainRouterProtocol: AlertRoutable {

}
