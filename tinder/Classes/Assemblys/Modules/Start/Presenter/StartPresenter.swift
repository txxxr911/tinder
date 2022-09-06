//
//  StartPresenter.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import Foundation

class StartPresenter: BasePresenter<StartInteractorInput, StartRouterProtocol>, StartModuleOutput {
    
    // MARK: - Weak properties
    weak var view: StartViewInput?
}

// MARK: Private
extension StartPresenter {
    
}

// MARK: Module Input
extension StartPresenter: StartModuleInput {
    
}

// MARK: View Output
extension StartPresenter: StartViewOutput {
  
    func loginButtonDidPress() {
        
    }
    
    func signUpButtonDidPress() {
        
    }
    
    func signInWithAppleButtonPressed() {
        router.navigateToMainView()
    }
    
    func signInWithFacebookButtonPressed() {
        router.navigateToMainView()
    }
    
    func signInWithNumberOfPhoneButtonPressed() {
        router.navigateToMainView()
    }
    
    func viewDidLoad() {
        
    }
}
