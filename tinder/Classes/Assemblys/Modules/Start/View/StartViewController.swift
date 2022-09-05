//
//  StartViewController.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import UIKit

class StartViewController: UIViewController, StartViewInput {
    var output: StartViewOutput!
    
    var background = UIImageView()
    var logo = UIImageView()
    var agreementTextView = UITextView()
    var createAccountButton = UIButton()
    var loginButton = UIButton()
    var loginTroublesLabel = UILabel()
    
    override func viewDidLoad() {
        bind()
        super.viewDidLoad()
        output.viewDidLoad()
        
    }
}

// MARK: - Configure
extension StartViewController {
    
}

// MARK: View Input
extension StartViewController {
    func set(title: String) {
    }
}

// MARK: Button Action
extension StartViewController {
    
}
