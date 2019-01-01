// Stewart Dulaney
// 10/23/2018
// CS 53A Section 4120
// SID: 1545566
// Midterm

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var changeLabel: UILabel!
    
    var e1 = Emoji(emoji: "😎📱🏀🏈🐻🐶", count: 6)
    
    var bank = Bank(amount: 0)
    var isTyping: Bool = false
    
    @IBAction func insertOneDollar(_ sender: UIButton) {
        bank.deposit(amt: 1.0)
        displayTextField.text = String(format: "%.2f", bank.getBalance())
    }
    
    @IBAction func insert25Cents(_ sender: UIButton) {
        bank.deposit(amt: 0.25)
        displayTextField.text = String(format: "%.2f", bank.getBalance())
    }
    
    @IBAction func insert10Cents(_ sender: UIButton) {
        bank.deposit(amt: 0.10)
        displayTextField.text = String(format: "%.2f", bank.getBalance())
    }
    
    @IBAction func insert5Cents(_ sender: UIButton) {
        bank.deposit(amt: 0.05)
        displayTextField.text = String(format: "%.2f", bank.getBalance())
    }
    
    @IBAction func typeLetterA(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "A"
        }
        else {
            displayTextField.text = "A"
            isTyping = true
        }
    }
    
    @IBAction func typeLetterB(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "B"
        }
        else {
            displayTextField.text = "B"
            isTyping = true
        }
    }
    
    @IBAction func typeLetterC(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "C"
        }
        else {
            displayTextField.text = "C"
            isTyping = true
        }
    }
    
    @IBAction func typeLetterD(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "D"
        }
        else {
            displayTextField.text = "D"
            isTyping = true
        }
    }
    
    @IBAction func typeLetterE(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "E"
        }
        else {
            displayTextField.text = "E"
            isTyping = true
        }
    }
    
    @IBAction func typeLetterF(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "F"
        }
        else {
            displayTextField.text = "F"
            isTyping = true
        }
    }
    
    @IBAction func typeLetterG(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "G"
        }
        else {
            displayTextField.text = "G"
            isTyping = true
        }
    }
    
    @IBAction func typeLetterH(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "H"
        }
        else {
            displayTextField.text = "H"
            isTyping = true
        }
    }
    
    @IBAction func typeLetterI(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "I"
        }
        else {
            displayTextField.text = "I"
            isTyping = true
        }
    }
    
    @IBAction func typeLetterJ(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "J"
        }
        else {
            displayTextField.text = "J"
            isTyping = true
        }
    }
    
    @IBAction func typeLetterK(_ sender: UIButton) {
        if (isTyping) {
            displayTextField.text! = displayTextField.text! + "K"
        }
        else {
            displayTextField.text = "K"
            isTyping = true
        }
    }
    
    @IBAction func typeBackspace(_ sender: UIButton) {
        if (isTyping) {
            let index = displayTextField.text!.index(before: displayTextField.text!.endIndex)
            displayTextField.text = String(displayTextField.text![displayTextField.text!.startIndex..<index])
        }
    }
    
    @IBAction func goButton(_ sender: UIButton) {
        let userInput = displayTextField.text
        if (userInput == "A" && (bank.getBalance() >= 1.20)) {
            bank.withDraw(amt: 1.20)
            displayTextField.text = String(format: "%.2f", bank.getBalance())
            displayLabel.text = "CHANGE:"
            resultLabel.text = "Now dispensing Water"
            displayChange()
        }
        else if (userInput == "B" && (bank.getBalance() >= 1.35)) {
            bank.withDraw(amt: 1.35)
            displayTextField.text = String(format: "%.2f", bank.getBalance())
            displayLabel.text = "CHANGE:"
            resultLabel.text = "Now dispensing Chips"
            displayChange()
        }
        else if (userInput == "C" && (bank.getBalance() >= 1.75)) {
            bank.withDraw(amt: 1.75)
            displayTextField.text = String(format: "%.2f", bank.getBalance())
            displayLabel.text = "CHANGE:"
            resultLabel.text = "Now dispensing Coke"
            displayChange()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Test init:")
        print(e1.description())
        
        print("\nTest getEmoji:")
        print(e1.getEmoji())
        
        print("\nTest setEmoji:")
        e1.setEmoji(str: "🤠👻💩👾💀👽👍🤯👊🏻")
        print(e1.description())
        
        print("\nTest getCount:")
        print(e1.getCount())
        
        print("\nTest appendChar:")
        print(e1.appendChar(em: "ABCD"))
        
        print("\nTest countChar:")
        e1.setEmoji(str: "🤠👻💩👾💀👽👍👾👾🤯👾👊🏻")
        print(e1.countChar(ch: "👾"))
        
        print("\nTest insert:")
        e1.insert(ch: "📞")
        print(e1.description())
        
        print("\nTest insertBack:")
        e1.insertBack(ch: "📞")
        print(e1.description())
        
        print("\nTest delete:")
        e1.delete()
        print(e1.description())
        
        print("\nTest deleteBack:")
        e1.deleteBack()
        print(e1.description())
        
        displayTextField.text = String(format: "%.2f", bank.getBalance())
    }

    func displayChange() {
        let balanceInCents: Int = Int((bank.getBalance() * 100).rounded(.up))
        let numQuarters = balanceInCents / 25
        let numDimes = (balanceInCents % 25) / 10
        let numNickels = ((balanceInCents % 25) % 10) / 5
        changeLabel.text = "Your change is \(numQuarters) quarter(s), \(numDimes) dime(s), and \(numNickels) nickel(s)"
    }

}

