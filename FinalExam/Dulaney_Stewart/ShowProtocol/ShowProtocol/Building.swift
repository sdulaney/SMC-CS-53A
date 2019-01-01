//
//  Building.swift
//  ShowProtocol
//
//  Created by Stewart Dulaney on 12/11/18.
//  Copyright © 2018 Stewart Dulaney. All rights reserved.
//

import Foundation

class Building : Appraisable {
    var numFloors: Int = 0
    var street: String = ""
    var city: String = ""
    var state: String = ""
    var zip: String = ""
    
    init(numFloors: Int, street: String, city: String, state: String, zip: String) {
        self.numFloors = numFloors
        self.street = street
        self.city = city
        self.state = state
        self.zip = zip
    }
    
    func estimate() -> Double {
        var cost: Double = 0.0
        cost += (Double(numFloors) * 100000.0)
        return cost
    }
    
    func description() -> String {
        return "Number of Floors: \(numFloors)\nStreet: \(street)\nCity: \(city)\nState: \(state)\nZip Code: \(zip)\n"
    }
}
