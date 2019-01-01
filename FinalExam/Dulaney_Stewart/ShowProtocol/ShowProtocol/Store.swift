//
//  Store.swift
//  ShowProtocol
//
//  Created by Stewart Dulaney on 12/11/18.
//  Copyright © 2018 Stewart Dulaney. All rights reserved.
//

import Foundation

class Store : Building {
    var name: String = ""
    var storeManager: String = ""
    
    init(numFloors: Int, street: String, city: String, state: String, zip: String, name: String, storeManager: String) {
        self.name = name
        self.storeManager = storeManager
        super.init(numFloors: numFloors, street: street, city: city, state: state, zip: zip)
    }
    
    override func estimate() -> Double {
        var cost: Double = 0.0
        cost += super.estimate()
        cost += 80000
        return cost
    }
    
    override func description() -> String {
        return super.description() + "Store Name: \(name)\nStore Manager: \(storeManager)\n"
    }
}
