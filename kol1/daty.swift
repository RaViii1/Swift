var a : Int = 0
var b : Int = 0

var t : Int = 0
print("Podaj rok:", terminator: "")
guard let a1 = Int(readLine()!) else{
    fatalError("Zła liczba")
}
print("Podaj rok:", terminator: "")
guard let b1 = Int(readLine()!) else{
    fatalError("Zła liczba")
}
if(b1>a1){
    for i in a1...b1{
    print(i, terminator: ", ")
    }
}else{
    for i in b1...a1{
    print(i, terminator: ", ")
    }
}
