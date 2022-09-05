//
//  NSObject+Ext.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import Foundation

extension NSObject {
    class var nameOfClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
