var mean : Float = 0

repeat{
    print("Podaj średnią: ")
    if let temp = Float(readLine()!){
        mean = temp
    }
}while(mean<3.0 || mean > 5.0)


switch (mean){
case 0..<3.0: print("Stypendium wynosi: 0")
case 3.0..<4.0: print("Stypendium wynosi: 100")
case 4.0..<4.5: print("Stypendium wynosi: 150")
case 4.5..<5.0: print("Stypendium wynosi: 200")
default: print("Nie poprawna średnia")
}
