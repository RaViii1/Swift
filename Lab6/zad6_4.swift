import Foundation
var arr : [Int] = []
var arr2 : [Int] = []


var a : Int = 0

repeat{
    print("Podaj wielkośc tablicy: ")
    guard let Liczba = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    a = Liczba
}while(a < 0 )

for _ in 1...a{
    arr.append(Int.random(in: 1...20))
    arr2.append(Int.random(in: 1...20))
    }
arr2.shuffle()
print("Zawartosc arr1: [", terminator: "")
arr.forEach{print($0, terminator: ", ")}
print("]")
print("Zawartosc arr1: [", terminator: "")
arr2.forEach{print($0, terminator: ", ")}
print("]")
arr.forEach{
    if(arr2.contains($0)){
        print("arr2 zawiera: \($0)")
    }else{
        print("arr2 nie zawiera: \($0)")
    }
}
