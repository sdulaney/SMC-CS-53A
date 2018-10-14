//
//  Bank.swift
//  ShowMVCBank
//
//  Created by dehkhoda_abbas on 3/28/18.
//  Copyright © 2018 Santa Monica College. All rights reserved.
//

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
        if( amt < balance )
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
