import Foundation

var arr: [[Int]] = []
var rand : Int = 0

var a : Int = 0
var b : Int = 0
repeat{
    print("Podaj wielkośc tablicy  (a x b): ")
    guard let Liczba = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    a = Liczba
    guard let Liczba2 = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    b = Liczba2
}while(a < 0 || b < 0)
    

for i in 0...a-1 {
    arr.append([])
    for j in 0...b-1{
        arr[i].append(Int.random(in: 1...100))
    }
}

print("[", terminator: "")
for i in 0 ..< arr.count {
    print("[", terminator: "")
    for j in 0 ..< arr[i].count{
        print("\(arr[i][j])", terminator:", ")
    }
    print("]")
}
print("]")
