var val : Int = 0
repeat{
    print("Podaj liczbę całkowitą z zakresu 2-3010:")
    if let temp = Int(readLine()!){
        val = temp
    }
}while (val < 2 || val > 3010)

if(val <= 100){
   print("I wiek")  
}
else if (val % 100 == 0) {
    print("\(val/100) Wiek")
}
else {
    print("\(val / 100 + 1 ) wiek")
}

