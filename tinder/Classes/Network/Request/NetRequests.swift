//
//  NetRequests.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import Foundation

protocol RequstModelSerealizable {
    func parameters() -> [String: Any]
    func body() -> Data
}

extension RequstModelSerealizable {
    func parameters() -> [String: Any] { return [:] }
    func body() -> Data { return Data() }
}
