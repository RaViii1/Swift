var arr: [[Double]] = []
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
    

for _ in 0...a-1 {
    for _ in 0...b-1{
        rand = Double.random(in: -100...100)
        arr.append([rand])
    }
}

for i in 0 ..< arr.count {
    for j in 0 ..< arr[i].count{
        print("\(arr[i][j])", terminator:" ")
    }
    print()
}

print("Max in array: \(arr.max())")
print("Min in array: \(arr.min())")
