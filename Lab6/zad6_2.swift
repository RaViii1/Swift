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
  print(element)
}


//2
print("Podaj liczbe calkowita: ")
if let temp = Int(readLine()!){
    wczyt = temp
    arr.insert(wczyt, at: 0)
}
print("Zawartosc tablicy: ")
for element in arr {
  print(element)
}
//3
randIndex = Int.random(in: 1...100)
print("Wylosowany index: \(randIndex)")
print("Podaj liczbe calkowita: ")
if let temp = Int(readLine()!){
    wczyt = temp
    arr.insert(wczyt, at: randIndex)
}
print("Zawartosc tablicy: ")
for element in arr {
  print(element)
}
