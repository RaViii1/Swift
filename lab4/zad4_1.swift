var rok : Int = 0
print("Podaj rok który chcesz sprawdzić: ")
if let temp = Int(readLine()!){
    rok = temp
}
if((rok % 4 == 0 && rok % 100 != 0) || rok % 400 == 0){
    print("Rok \(rok) jest przestępny")
}else{
     print("Rok \(rok) nie jest przestępny")
}
