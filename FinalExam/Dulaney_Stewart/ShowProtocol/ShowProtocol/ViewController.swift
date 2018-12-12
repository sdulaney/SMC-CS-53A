//
//  ViewController.swift
//  ShowProtocol
//
//  Created by Stewart Dulaney on 12/11/18.
//  Copyright © 2018 Stewart Dulaney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayBuilding = [Appraisable]()
    let b1 = Building(numFloors: 3, street: "10919 Wellworth Ave", city: "Los Angeles", state: "CA", zip: "90024")
    let h1 = House(numFloors: 3, street: "655 Gayley Ave", city: "Los Angeles", state: "CA", zip: "90024", numBedrooms: 37, numBathrooms: 3)
    let s1 = Store(numFloors: 1, street: "3212 Pico Blvd", city: "Santa Monica", state: "CA", zip: "90405", name: "Trader Joe's", storeManager: "Joe")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arrayBuilding = [b1, h1, s1]
        for appraisable in arrayBuilding {
            if let building = appraisable as? Building {
                print(building.description(), terminator:"")
            }
            printCostEstimate(a: appraisable)
            print()
        }
    }


}

func printCostEstimate(a: Appraisable) {
    print("Cost Estimate: \(a.estimate())")
}
