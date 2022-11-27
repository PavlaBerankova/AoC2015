import Cocoa

var contents = [String()]

if let filepath = Bundle.main.path(forResource: "input02", ofType: "txt") {
    do {
        let contentx = try! String(contentsOfFile: filepath)
        contents.append(contentsOf: contentx.components(separatedBy: CharacterSet(charactersIn: "x\n")))
    }
}
   /*
    } catch {
        // contents could not be loaded
    }
} else {
    // example.txt not found!
}
    */
var contentsToInt = contents.compactMap { Int($0) }


var extraPaper = [Int]()
var result = [Int]()
var ribbon = [Int]()

while contentsToInt.count != 0 {
    
    var l = contentsToInt[0]
    var w = contentsToInt[1]
    var h = contentsToInt[2]

    
    var example = (2 * l * w) + (2 * w * h) + (2 * h * l)
    var ribbon2 = (l * w * h)
    var extra = [Int]()
    extra.append(l)
    extra.append(w)
    extra.append(h)
    extra.sorted()
    var paper = extra.sorted()[0] * extra.sorted()[1]
    var wrap = extra.sorted()[0] * 2 + extra.sorted()[1] * 2
    
    for i in 1...3 {
        contentsToInt.remove(at: 0)
    }
result.append(example)
extraPaper.append(paper)
ribbon.append(wrap)
ribbon.append(ribbon2)
}
var needPaper = result + extraPaper
var sum = 0

for i in needPaper{
    sum = sum + i
}

print("1.puzzle answer is \(sum).")

var sum2 = 0
for i in ribbon {
    sum2 = sum2 + i
}
print("2.puzzle answer is \(sum2).")



