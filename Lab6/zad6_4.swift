import Foundation
var arr : [Int] = []
var arr2 : [Int] = []
var rand : Int = 0
var wczyt : Int = 0
var element : Int = 0


print("Podaj wielkośc tablicy  (calkowita dodatnia): ")
    guard let Liczba = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }



for _ in 1...Liczba{
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
