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
    
    func appendChar(em: String) -> String {
        // your code should take first emoji from em and
        // append at end of it
        // Example let say em = “ABCD”
        // appendChar should return BCDA
        let firstChar = em[em.startIndex]
        let index = em.index(after: em.startIndex)
        var result = String(em[index..<em.endIndex])
        result.append(firstChar)
        return result
    }
    
    // Returns the number of times the character ch occurs in the property emoji.
    func countChar(ch: Character) -> Int {
        var count: Int = 0
        for char in self.emoji {
            if (char == ch) {
                count += 1
            }
        }
        return count
    }
    
    // Inserts the character ch at the beginning of the property emoji and increments the property count.
    func insert(ch: Character) {
        emoji = String(ch) + emoji
        count += 1
    }
    
    // Inserts the character ch at the end of the property emoji and increments the property count.
    func insertBack(ch: Character) {
        emoji = emoji + String(ch)
        count += 1
    }
    
    // Deletes the character at the beginning of the property emoji and decrements the property count.
    func delete() {
        let index = emoji.index(after: emoji.startIndex)
        emoji = String(emoji[index..<emoji.endIndex])
        count -= 1
    }
    
    // Deletes the character at the end of the property emoji and decrements the property count.
    func deleteBack() {
        let index = emoji.index(before: emoji.endIndex)
        emoji = String(emoji[emoji.startIndex..<index])
        count -= 1
    }
    
    func description() -> String {
        return "emoji: \(self.emoji) \ncount: \(self.count)"
    }
}
