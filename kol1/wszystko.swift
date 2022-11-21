//Daty
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

var a : Int = 0
var b : Int = 0

//NWD
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

//Poszukiwana
var arr : [Int] = []
var diff : Int
var val : Int = 0
var indx : Int = 0
print("Podaj liczbę poszukiwaną" ,terminator: " ")
guard let poszukiwana = Int(readLine()!)else{
    fatalError("Zła liczba")
}
print("Podaj wielkosc tablicy" ,terminator: " ")
guard let n = Int(readLine()!)else{
    fatalError("Zła liczba")
}

for i in 0..<n{
    print("Podaj element \(i) tablicy:" ,terminator: " ")
    guard let val = Int(readLine()!)else{
        fatalError("Zła liczba")
    }
    arr.append(val)
}
diff = abs(poszukiwana - arr[0])
for i in 0..<n{
    if(abs(poszukiwana - arr[i]) < diff){
        diff = abs(poszukiwana - arr[i])
        indx = i
    }
}
print("Najblizsza wartosc do poszukiwanej: ", arr[indx] )

//Pierwsze
