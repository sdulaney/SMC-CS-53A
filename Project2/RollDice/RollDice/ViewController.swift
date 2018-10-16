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
    
    
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        msgLabel.text = "Hello Dice"
        dieOneImageView.image = UIImage(named: "Die2")
        dieTwoImageView.image = UIImage(named: "Die4")
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

