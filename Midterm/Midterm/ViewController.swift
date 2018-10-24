// Stewart Dulaney
// 10/23/2018
// CS 53A Section 4120
// SID: 1545566
// Midterm

import UIKit

class ViewController: UIViewController {
    
    var e1 = Emoji(emoji: "😎📱🏀🏈🐻🐶", count: 6)

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
    }


}

