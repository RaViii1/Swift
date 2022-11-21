var a : Int = 0
var b : Int = 0

var t : Int = 0
print("Podaj a:", terminator: "")
guard let a1 = Int(readLine()!) else{
    fatalError("Zła liczba")
}
print("Podaj b:", terminator: "")
guard let b1 = Int(readLine()!) else{
    fatalError("Zła liczba")
}
a = a1
b = b1
while(b != 0){
    t = b
    b = a % b
    a = t
}
print("NWD = ", a )
