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
