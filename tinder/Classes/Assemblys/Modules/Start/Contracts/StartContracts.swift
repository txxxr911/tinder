//
//  StartContracts.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import Foundation

// Module Input
protocol StartModuleInput {
    
}

// Module Output
protocol StartModuleOutput {
    
}

// View Input
protocol StartViewInput: class {
    func set(title: String)
}

// View Output
protocol StartViewOutput: class {
    func viewDidLoad()
}

// Interactor
protocol StartInteractorInput {
}

// Router
protocol StartRouterProtocol: AlertRoutable {
    
}
