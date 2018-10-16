// Stewart Dulaney
// 10/14/2018
// CS 53A Section 4120
// SID: 1545566
// Project 2

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var betLabel: UILabel!
    @IBOutlet weak var betTextField: UITextField!
    @IBOutlet weak var dieOneImageView: UIImageView!
    @IBOutlet weak var dieTwoImageView: UIImageView!
    @IBOutlet weak var rollNowBtn: UIButton!
    
    
    
    let bank = Bank(amount: 500)
    let dice = Dice()
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        dice.throwDice()
        let die1: Int = dice.getDice1()
        let die2: Int = dice.getDice2()
        dieOneImageView.image = UIImage(named: "Die\(die1)")
        dieTwoImageView.image = UIImage(named: "Die\(die2)")
        
        let bet: Double = Double(betTextField.text!)!
        let sum: Int = die1 + die2
        // If the sum of the dice is 7 or 11
        if ((sum == 7) || (sum == 11)) {
            // Deposit 3 times the bet amount
            bank.deposit(amt: 3 * bet)
            msgLabel.text = "You rolled \(sum)! You won $\(String(format: "%.2f", 3 * bet))!"
        }
        else {
            // Withdraw the bet amount
            bank.withDraw(amt: bet)
            msgLabel.text = "You rolled \(sum)! You lost $\(String(format: "%.2f", bet))!"
        }
        moneyTextField.text = String(format: "%.2f", bank.getBalance())
        if (bank.getBalance() == 0.0) {
            msgLabel.text = "Game over!"
            rollNowBtn.isEnabled = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        moneyTextField.text = String(format: "%.2f", bank.getBalance())
        betTextField.text = String(format: "%.2f", 500.0);
    }


}

