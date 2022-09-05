//
//  MainViewController.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import UIKit

class MainViewController: UIViewController, MainViewInput {
    var output: MainViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
    }
}

// MARK: - Configure
extension MainViewController {
    
}

// MARK: View Input
extension MainViewController {
    func set(title: String) {
        self.title = title
    }
}

// MARK: Button Action
extension MainViewController {
    
}
