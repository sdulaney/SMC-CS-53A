//
//  ViewController.swift
//  ShowProtocol
//
//  Created by Stewart Dulaney on 12/11/18.
//  Copyright © 2018 Stewart Dulaney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

func printCostEstimate(a: Appraisable) {
    print("Cost Estimate: \(a.estimate())\n")
}
