//
//  SecondViewController.swift
//  Project3
//
//  Created by Stewart Dulaney on 11/13/18.
//  Copyright © 2018 Stewart Dulaney. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    var timer = Timer()
    var timer2 = Timer()
    
    @IBAction func stopBannerButton(_ sender: UIButton) {
        timer.invalidate()
        timer2.invalidate()
    }
    
    @IBAction func display(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(SecondViewController.doBanner), userInfo: nil, repeats: true)
    }
    
    @IBAction func display2(_ sender: UIButton) {
        timer2 = Timer.scheduledTimer(timeInterval: 0.50, target: self, selector: #selector(SecondViewController.doBanner2), userInfo: nil, repeats: true)
    }
    
    @objc func doBanner() {
        var str = myLabel.text
        
        let index1 = str?.startIndex
        
        let index2 = str?.characters.index(after: (str?.startIndex)!)
        let ch = str?.substring(to: index2!)
        
        let rest = str?.substring(from: index2!)
        
        let newStr = rest! + ch!
        //  myLab2.font = UIFont(name: "roman", size: CGFloat())
        myLabel2.text = ch!
        myLabel.text = newStr
    }
    
    @objc func doBanner2() {
        var str = myLabel3.text
        
        let index1 = str?.startIndex
        
        let index2 = str?.characters.index(after: (str?.startIndex)!)
        let ch = str?.substring(to: index2!)
        
        let rest = str?.substring(from: index2!)
        
        let newStr = rest! + ch!
        //  myLab2.font = UIFont(name: "roman", size: CGFloat())
        //myLab2.text = ch!
        myLabel3.text = newStr
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.text = "🐹..🤓..😨..😟..🍎..🍔..🚘.."
        myLabel3.text = " Please do vote today...."
    }

}

