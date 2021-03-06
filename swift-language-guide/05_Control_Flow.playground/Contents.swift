//: Playground - noun: a place where people can play
// https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120
// http://wiki.jikexueyuan.com/project/swift/chapter2/05_Control_Flow.html

import UIKit

for index in 1...5 {
  print("\(index) times 5 is \(index*5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
  answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
  print("Hello, \(name)")
}

let numberOfLegs = ["spider":8, "ant":6, "cat":4]
for (aniName,aniCount) in numberOfLegs {
  print("\(aniName)s have \(aniCount) legs")
}

for var i = 0; i < 3; ++i {
  print("index is \(index)")
}

let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare {
  // 掷骰子
  if ++diceRoll == 7 { diceRoll = 1 }
  // 根据点数移动
  square += diceRoll
  if square < board.count {
    // 如果玩家还在棋盘上，顺着梯子爬上去或者顺着蛇滑下去
    square += board[square]
  }
}
print("Game over!")

var temperatureInFahrenheit = 30
if temperatureInFahrenheit < 32 {
  print("It's very cold.")
}

temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
  print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
  print("It's really warm. Don't forget to wear sunscreen.")
} else {
  print("It's not that cold. Wear a t-shirt.")
}

let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
  print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
  print("\(someCharacter) is a consonant")
default:
  print("\(someCharacter) is not a vowel or a consonant")
}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
  naturalCount = "no"
case 1..<5:
  naturalCount = "a few"
case 5..<12:
  naturalCount = "several"
case 12..<100:
  naturalCount = "dozens of"
case 100..<1000:
  naturalCount = "hundreds of"
default:
  naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

let somePoint = (1,1)
switch somePoint {
case (0,0):
  print("(0,0) is at the origin")
case (_,0):
  print("(\(somePoint.0), 0) is on the x-axis")
case (0,_):
  print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
  print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
  print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
  print("on the x-axis with an x value of \(x)")
case (0, let y):
  print("on the y-axis with a y value of \(y)")
case let (x, y):
  print("somewhere else at (\(x), \(y))")
}

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
  print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
  print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
  print("(\(x), \(y)) is just some arbitrary point")
}


let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput.characters {
  switch character {
    case "a","e","i","o","u"," ":
      continue
  default:
    puzzleOutput.append(character)
  }
}
print(puzzleOutput)

let numberSymbol: Character = "三"
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
  possibleIntegerValue = 1
case "2", "٢", "二", "๒":
  possibleIntegerValue = 2
case "3", "٣", "三", "๓":
  possibleIntegerValue = 3
case "4", "٤", "四", "๔":
  possibleIntegerValue = 4
default:
  break
}
if let integerValue = possibleIntegerValue {
  print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
  print("An integer value could not be found for \(numberSymbol).")
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
  description += " a prime number, and also"
  fallthrough
default:
  description += " an integer."
}
print(description)

func greet(person: [String: String]) {
  guard let name = person["name"] else {
    return
  }
  print("Hello \(name)")
  
  guard let location = person["location"] else {
    print("I hope the weather is nice near you.")
    return
  }
  print("I hope the weather is nice in \(location).")
}
greet(["name": "John"])
// prints "Hello John!"
// prints "I hope the weather is nice near you."
greet(["name": "Jane", "location": "Cupertino"])
// prints "Hello Jane!"
// prints "I hope the weather is nice in Cupertino."


if #available(iOS 9, OSX 10.10, *) {
  // Use iOS 9 APIs on iOS, and use OS X v10.10 APIs on OS X
  print("iOS 9, OSX 10.10")
} else {
  print("not iOS 9, OSX 10.10")
  // Fall back to earlier iOS and OS X APIs
}



































