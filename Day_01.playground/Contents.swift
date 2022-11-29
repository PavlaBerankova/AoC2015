import Cocoa

var input = ""

if let filepath = Bundle.main.path(forResource: "input01", ofType: "txt") {
    do {
        var content = try String(contentsOfFile: filepath)
        input.append(content)
    } catch {
        //contents could not loaded
    }
} else {
    print("File not found")
}

func part1() {
    let upFloor = input.filter({ $0 == "(" }).count
    let downFloor = input.filter({ $0 == ")" }).count
    let currentFloor = upFloor - downFloor
    print("Result of part one is \(currentFloor).")
}

func part2() {
    var bracketToNumber = [Int]()
    var count = 0
    let bracketOpen = ("(")
    let bracketEnd = (")")
    for i in input {
            if bracketOpen.contains(i) {
                count += 1
                bracketToNumber.append(count)
            } else if bracketEnd.contains(i) {
                count -= 1
                bracketToNumber.append(count)
            }
        }
    if let index = bracketToNumber.firstIndex(of: -1) {
        print("Result of part two is \(index + 1).")
    }
}

part1()
part2()




