// Stewart Dulaney
// 9/18/2018
// CS 53A Section 4120
// SID: 1545566
// Project 1

import UIKit

var str = "Hello, playground"
/*******************
CS53A
Project1 (100 points)
Please read on Swift String from apple document and try the following using Playground
Or iOS as we discuss in class (if Playground running for ever, save your work and quit Xcode
And start again).
Let have String of emojies and apply the following methods.
 
let emojies = "⚽️🏀🏈⚾️🎱🏉🏐🎾🚖⏰🍎🍎";

Try to do the following:
 
1. print all emojies
2. count how may apples by goint thru emojies
3. print all emojies up to 🎱
4. print all emojies after 🎱
5. add new emojies to the end
6. remove the first emojie
7. print emojies in reverse orther.
 
Make sure you document and show output after
each step.

**************************************/

var emojis = "⚽️🏀🏈⚾️🎱🏉🏐🎾🚖⏰🍎🍎";

// Problem 1
// Prints all emojis by iterating over the string with a for-in loop.
func printAllEmojis(str: String) {
    for char in str {
        print(char, terminator:"")
    }
    print("\n")
}
print("Problem 1:")
printAllEmojis(str: emojis)
// Prints all emojis by printing the entire string.
func printAllEmojis2(str: String) {
    print(str)
}
printAllEmojis(str: emojis)

// Problem 2
// Counts the number of apple emojis by iterating over the string with a for-in loop.
func countApples(str: String) -> Int {
    var count: Int = 0
    for char in str {
        if (char == "🍎") {
            count += 1
        }
    }
    return count
}
var numApples = countApples(str: emojis)
print("Problem 2:")
print("There are \(numApples) apple emojis in the string \(emojis).\n")

// Problem 3
// Prints all emojis up to and including the 8 ball emoji.
func printUpTo8Ball(str: String) {
    for char in str {
        print(char, terminator:"")
        if (char == "🎱") {
            break
        }
    }
    print("\n")
}
print("Problem 3:")
printUpTo8Ball(str: emojis)

// Problem 4
// Prints all emojis after the 8 ball emoji.
func printAfter8Ball(str: String) {
    var index = str.index(of: "🎱") ?? str.endIndex
    if (index != str.endIndex) {
        index = str.index(after: index)
    }
    let result = str[index..<str.endIndex]
    print("\(result)\n")
}
print("Problem 4:")
printAfter8Ball(str: emojis)

// Problem 5
// Adds a new emoji to the end of the string passed in.
func addNewEmoji(str: String, emoji: Character) -> String {
    var result = str
    result.append(emoji)
    return result
}
let problem5 = addNewEmoji(str: emojis, emoji: "🏓")
print("Problem 5:")
print("\(problem5)\n")

// Problem 6
// Removes the first emoji from the string passed in.
func removeFirstEmoji(str: String) -> String {
    let index = str.index(after: str.startIndex)
    let result = String(str[index..<str.endIndex])
    return result
}
let problem6 = removeFirstEmoji(str: emojis)
print("Problem 6:")
print("\(problem6)\n")

// Problem 7
// Reverses the order of the characters in the string passed in.
func reverseStr(str: String) -> String {
    var result = String()
    for char in str {
        result = String(char) + result
    }
    return result
}
print("Problem 7:")
let reversedEmojis = reverseStr(str: emojis)
print("\(reversedEmojis)")
let problem7 = reverseStr(str: "!dlrow ,olleH")
print("\(problem7)\n")

// Extra Credit
// Prints the Unicode Scalar representation of each character in a string.
func printUnicodeScalarRepresentation(str: String) {
    for scalar in str.unicodeScalars {
        print("\(scalar): \(scalar.value)")
    }
}
print("Extra Credit:")
printUnicodeScalarRepresentation(str: "Dog‼🐶")


