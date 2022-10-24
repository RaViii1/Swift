import Foundation

var wyb : Int = 0;
var a : Double = 0.0
var b : Double = 0.0
print("podaj dwie liczby a, b:")
if let temp = Double(readLine()!){
    a = temp
}
if let temp = Double(readLine()!){
    b = temp
}
print("1-dodawanie, 2-odejmowanie, 3-mnożenie, 4-dzielenie")

if let str = Int(readLine()!){
    wyb = str
}
switch (wyb){
    case 1: print("Dodawanie= \(a+b)")
    case 2: print("Odejmowanie= \(a-b)")
    case 3: print("Mnożenie= \(a*b)")
    case 4: print("Dzielenie= \(a/b)")
default: print("Błędna operacja!")
    
}
