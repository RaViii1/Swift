import Foundation
var arr : [Int] = []
let count = 1...10
var rand : Int = 0
var randIndex : Int = 0
var wczyt : Int = 0
for _ in count{
    rand = Int.random(in: 1...100)
    arr.append(rand)
}
print("Zawartosc tablicy: ")
for element in arr {
    print(element, terminator: ", ")
}
print("]")


//2
print("Podaj liczbe calkowita: ")
if let temp = Int(readLine()!){
    wczyt = temp
    arr.insert(wczyt, at: 0)
}
print("Zawartosc tablicy: ")
for element in arr {
  print(element, terminator: ", ")
}
print("]")
//3
var last : Int = arr.count - 1
arr.insert(wczyt, at: Int.random(in: 0...last))
print("[", terminator: "")
for i in arr {
    print(i, terminator: ", ")
}
print("]")
