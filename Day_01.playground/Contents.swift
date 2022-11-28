import Foundation
import Cocoa

var input = [Character]()

if let filepath = Bundle.main.path(forResource: "input01", ofType: "txt") {
    do {
        let content = try! Character(filepath)
        input.append(content)
        

    }
}

var data = input.compactMap { String($0) }
print(data)

var count = 0

let parenthesIsOpen = ("(")
let parenthesIsEnd = (")")

// transfer parenthesis to array number
var parenthesisToNumber = [Int]()

for i in input {
        if parenthesIsOpen.contains(i) {
            count += 1
            parenthesisToNumber.append(count)
        } else if parenthesIsEnd.contains(i) {
            count -= 1
            parenthesisToNumber.append(count)
        }
       
    }
let answer1 = count
print("1.puzzle answer is \(answer1).")

let answer2: Int
let searchNumber = -1
if let index = parenthesisToNumber.firstIndex(of: searchNumber) {
    answer2 = index + 1
    print("2.puzzle answer is \(answer2).")
}




