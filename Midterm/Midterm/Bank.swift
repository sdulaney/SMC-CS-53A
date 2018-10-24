// Stewart Dulaney
// 10/23/2018
// CS 53A Section 4120
// SID: 1545566
// Midterm

import Foundation

class Bank
{
    var balance = 1000.0
    
    init(amount amt : Double)
    {
        balance += amt
    }
    
    func deposit( amt : Double)
    {
        balance += amt
    }
    
    func withDraw( amt : Double)
    {
        if( amt <= balance )
        {
            balance -= amt
        }
        else
        {
            print("No enough money")
        }
        
        
        
        
    }
    func getBalance() -> Double
    {
        return balance
    }
    
    
}
