// Stewart Dulaney
// 10/23/2018
// CS 53A Section 4120
// SID: 1545566
// Midterm

import Foundation

class Emoji {
    var emoji: String = ""
    var count = 0
    
    init (emoji e: String, count c: Int) {
        emoji = e
        count = c
    }
    
    func getEmoji() -> String {
        return self.emoji
    }
    
    func setEmoji(str: String) {
        emoji = str
        count = str.count
    }
    
    func getCount() -> Int {
        return self.count
    }
    
    func description() -> String {
        return "emoji: \(self.emoji) \ncount: \(self.count)"
    }
}
