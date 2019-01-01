//
//  House.swift
//  ShowProtocol
//
//  Created by Stewart Dulaney on 12/11/18.
//  Copyright © 2018 Stewart Dulaney. All rights reserved.
//

import Foundation

class House : Building {
    var numBedrooms: Int = 0
    var numBathrooms: Int = 0
    
    init(numFloors: Int, street: String, city: String, state: String, zip: String, numBedrooms: Int, numBathrooms: Int) {
        self.numBedrooms = numBedrooms
        self.numBathrooms = numBathrooms
        super.init(numFloors: numFloors, street: street, city: city, state: state, zip: zip)
    }
    
    override func estimate() -> Double {
        var cost: Double = 0.0
        cost += super.estimate()
        cost += (Double(numBedrooms) * 20000)
        return cost
    }
    
    override func description() -> String {
        return super.description() + "Number of Bedrooms: \(numBedrooms)\nNumber of Bathrooms: \(numBathrooms)\n"
    }
}
