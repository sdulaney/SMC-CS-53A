// Stewart Dulaney
// 10/14/2018
// CS 53A Section 4120
// SID: 1545566
// Project 2

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
