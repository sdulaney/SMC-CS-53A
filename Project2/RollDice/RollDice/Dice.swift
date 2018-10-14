//
//  Dice.swift
//  ShowMVCBank
//
//  Created by dehkhoda_abbas on 3/28/18.
//  Copyright © 2018 Santa Monica College. All rights reserved.
//

import Foundation

class Dice
{
    
    
    var d1 : Int = 0
    var d2 : Int = 0
    
    func throwDice(){
        self.d1 = Int(arc4random() % 6 + 1)
        self.d2 = Int(arc4random() % 6 + 1)
    }
    func getDice1() -> Int {
        return self.d1
    }
    func getDice2() -> Int {
        return self.d2
    }
    
    func description() -> String {
        return "Dice1: \(self.d1) \nDice2: \(self.d2)"
    }
    
    
    
}
