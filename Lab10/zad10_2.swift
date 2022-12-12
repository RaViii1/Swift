import Foundation

func dodanie (a: Float, b: Float) -> Float{
    return a+b
}

func odejmowanie (a: Float, b: Float) -> Float{
    return a-b
}

func mnozenie (a: Float, b: Float) -> Float{
    return a*b
}

func dzielenie (a: Float, b: Float) -> Float{
    if(b == 0){
     fatalError("Nie mozna dzielic przez 0")
    }
    return a*b

}

func root (a: Float) -> Float{
    return sqrt(a)
}

var n : Int = 0
print("1 – dodanie \n2 – odejmowanie\n3 – mnożenie\n4 – dzielenie\n5 – pierwiastkowanie", terminator: ": ")
guard let x = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita!")
}
n = x
var num1 : Float = 0
print("Podaj pierwsza liczbe", terminator: ": ")
guard let x = Float(readLine()!) else {
    fatalError("To nie jest liczba calkowita!")
}
num1 = x
var num2 : Float = 0
print("Podaj druga liczbe", terminator: ": ")
guard let x = Float(readLine()!) else {
    fatalError("To nie jest liczba calkowita!")
}
num2 = x
switch n{
case 1: print("Wynik dodawania: ", dodanie(a: num1, b: num2))
case 2: print("Wynik odejmowania: ", odejmowanie(a: num1, b: num2))
case 3: print("Wynik mnożenia: ", mnozenie(a: num1, b: num2))
case 4: print("Wynik dzielenia: ", dzielenie(a: num1, b: num2))
case 5: print("Wynik pierwiastkowania: ", root(a: num1))
default: print("Nie ma takiej opcji")
    
}
