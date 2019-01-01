//
//  FirstViewController.swift
//  Project3
//
//  Created by Stewart Dulaney on 11/13/18.
//  Copyright © 2018 Stewart Dulaney. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var clockLabel: UILabel!
    
    var timer = Timer()
    
    @objc func doTheTime() {
        let currTime = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm:ss"
        let currTimeFormatted = dateFormatter.string(from: currTime as Date)
        clockLabel.text = currTimeFormatted
    }
    
    @IBAction func startClockButton(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FirstViewController.doTheTime), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

