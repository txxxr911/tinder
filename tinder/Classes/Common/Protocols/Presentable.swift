//
//  Presentable.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import UIKit

protocol Presentable {
    func toPresent() -> UIViewController
}

extension UIViewController: Presentable {
    func toPresent() -> UIViewController {
        return self
    }
}
