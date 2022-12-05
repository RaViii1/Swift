//
//  main.swift
//  Kol_zad1
//
//  Created by student on 21/11/2022.
//


import Foundation

struct Zespolone{
    var Re: Double
    var i: Double
    init(Re: Double, i: Double) {
        self.Re = Re
        self.i = i
    }
}
var i : Int = 0
var zes1 : [Zespolone] = []

print("Podaj 2 liczby zespolone")
repeat{
    print("Podaj czesc rzeczywista  Liczby: " , terminator: " ")
    guard let x = Double(readLine()!)else {
        fatalError("Nie poprawne dane")
    }
    print("Podaj czesc urojona Liczby: " , terminator: " ")
    guard let y = Double(readLine()!)else {
        fatalError("Nie poprawne dane")
    }
    zes1.append(Zespolone(Re: x, i: y))
    i += 1
}while(i<2)
    
print("Wybierz 1-Dodawanie 2-Odejmowanie 3-Mnożenie: " , terminator: " ")
guard let m = Double(readLine()!)else {
    fatalError("Nieprawidlowa wartosc!")
}
switch m{
    
case 1:
    var w = Zespolone(Re: zes1[0].Re+zes1[1].Re, i: zes1[1].i+zes1[1].i)
    print("Wynik: \(w.Re) + \(w.i)i")
    break
    
case 2:
    var w = Zespolone(Re: zes1[0].Re-zes1[1].Re, i: zes1[1].i-zes1[1].i)
    print("Wynik: \(w.Re) + \(w.i)i")
    break
case 3:
    var w = Zespolone(Re: zes1[0].Re*zes1[1].Re-zes1[0].i*zes1[1].i, i: zes1[0].Re*zes1[1].i+zes1[1].Re*zes1[0].i)
    print("Wynik: \(w.Re) + \(w.i)i")
    break
default:
    fatalError("Nieprawidlowa opcja")
}



