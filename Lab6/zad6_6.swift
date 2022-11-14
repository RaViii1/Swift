var arr: [[Float]] = []
var rand : Double = 0

var a : Int = 0
var b : Int = 0
var max : Double = 0
var min : Double = 0
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
    

for i in 0 ..< a {
    arr.append([])
    for _ in 0 ..< b {
        arr[i].append(Float.random(in: -100.0...100.0))
    }
}
print("Tablica:")
print("[", terminator: "")
for i in 0 ..< a {
    print("[", terminator: "")
    for j in 0 ..< b{
        print("\(arr[i][j])", terminator:", ")
    }
    print("]")
}
print("]")

var max_v : Float = -100.0
var max_w : Int = 0
var max_k : Int = 0

for i in 0 ..< a {
    for j in 0 ..< b {
        if (arr[i][j] > max_v) {
            max_v = arr[i][j]
            max_w = i
            max_k = j
        }
    }
}
print("Najwiekszy element wynosi \(max_v) i znajduje sie na pozycji [\(max_w), \(max_k)]")
///// v2


import Foundation

print("Ile wierszy: ", terminator: "")
let wiersze : Int? = Int(readLine()!)
print("Ile kolumn: ", terminator: "")
let kolumny : Int? = Int(readLine()!)

if (wiersze != nil && kolumny != nil) {
    var array : [[Double]] = Array(repeating: Array(repeating: 0, count: kolumny!), count: wiersze!)

    for i in 0 ..< array.count {
        for j in 0 ..< array[i].count{
            var number = Float64.random(in: -100...100)
            array[i][j] = number
        }
    }
    
    for i in 0 ..< array.count {
        for j in 0 ..< array[i].count{
            print(String(format: "%.2f", array[i][j]), terminator:"  ")
        }
        print()
    }
    
    var min = array[0][0]
    var max = array[0][0]
    var maxIndexes = (0,0)
    var minIndexes = (0,0)
    
    for i in 0 ..< array.count {
        for j in 0 ..< array[i].count{
            if (array[i][j] > max) {
                max = array[i][j]
                maxIndexes = (i, j)
            }
            if (array[i][j] < min) {
                min = array[i][j]
                minIndexes = (i,j)
            }
        }
    }
    
    print("\nElement maksymalny: \(max)\nIndeks: \(maxIndexes)\n")
    print("Element minimalny: \(min)\nIndeks: \(minIndexes)\n")
    
}
else {
    print("Bledne dane")
}
