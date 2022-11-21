var num : Int = 0
var i : Int = 2

print("Podaj liczbe calkowitą: ")
guard let num = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita")
}

func checkingPrimeNumber(num: Int) -> Bool{
  
    if(num == 1 || num == 0){
        return false
       }

    for i in 2..<num{
    if (num % i == 0){
            return false
        }
    }

    return true
}

if(checkingPrimeNumber(num: num)){
    print("\(num) to liczba pierwsza")
}else{
    print("\(num) nie jest liczbą pierwszą")
}

////////////v2////////////////
print("Podaj liczbę")
guard let licz = Int(readLine()!) else {
    fatalError("Nie jest to liczba")
}

if (licz < 2) {
    print("Nie jest to liczba pierwsza")
} else {
    var i = 2
    var pierwsza = true
    while (i*i < licz) {
        if (licz % i == 0) {
            pierwsza = false
        }
        i = i + 1
    }
if (pierwsza) {
        print("Pierwsza")
    }else {
        print("Nie pierwsza")
    }
}
