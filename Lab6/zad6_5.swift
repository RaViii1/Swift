var arr: [[Int]] = []
var rand : Int = 0

print("Podaj wielkośc tablicy  (a x b): ")
    guard let Liczba = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
guard let Liczba2 = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    

for i in 0...Liczba-1 {
    for j in 0...Liczba2-1{
        rand = Int.random(in: 1...100)
        arr.append([rand])
    }
}

for i in 0 ..< arr.count {
    for j in 0 ..< arr[i].count{
        print("\(arr[i][j])", terminator:" ")
    }
    print()
}
