

import Foundation
var arr : [Int] = []
var arr2 : [Int] = []
var rand : Int = 0

var a : Int = 0

repeat{
    print("Podaj wielkośc tablicy: ")
    guard let Liczba = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    a = Liczba
}while(a < 0 )

for _ in 1...a{
    rand = Int.random(in: 1...20)
    arr.append(rand)
    arr2.append(rand)
    }
arr2.shuffle()
print("Zawartosc arr1:")
arr.forEach{print($0)}

arr.forEach{
    if(arr2.contains($0)){
        print("arr2 zawiera: \($0)")
    }else{
        print("arr2 nie zawiera: \($0)")
    }
}
