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

