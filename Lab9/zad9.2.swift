//
//  main.swift
//  Kol_zad1
//
//  Created by student on 21/11/2022.
//


import Foundation

struct rzutOszczepem{
    var identyfikator: Int
    var Proba1: Double
    var Proba2: Double
    var Proba3: Double
    init(identyfikator: Int, Proba1: Double, Proba2: Double, Proba3: Double) {
        self.identyfikator = identyfikator
        self.Proba1 = Proba1
        self.Proba2 = Proba2
        self.Proba3 = Proba3
    }
}
var i : Int = 0
var zaw : [rzutOszczepem] = []

print("Podaj dane 4 zawodnikow")
repeat{
    print("Podaj identyfikator: " , terminator: " ")
    guard let x = Int(readLine()!)else {
        fatalError("Nie poprawne dane")
    }
    print("Proba [1]: " , terminator: " ")
    guard let p1 = Double(readLine()!)else {
        fatalError("Nie poprawne dane")
    }
    print("Proba [2]: " , terminator: " ")
    guard let p2 = Double(readLine()!)else {
        fatalError("Nie poprawne dane")
    }
    print("Proba [3]: " , terminator: " ")
    guard let p3 = Double(readLine()!)else {
        fatalError("Nie poprawne dane")
    }
    zaw.append(rzutOszczepem(identyfikator: x, Proba1: p1, Proba2: p2, Proba3: p3))
    i += 1
}while(i<4)

var sr : [Double] = []
var max : Double = 0.0
var max_i : Int = 0
var min : Double = 22222222.0
var min_i : Int = 0

for i in 0..<4 {
    sr.append((zaw[i].Proba1 + zaw[i].Proba2 + zaw[i].Proba3) / 3.0)
    if (sr[i] > max) {
        max = sr[i]
        max_i = i
    }
    if (sr[i] < min) {
        min = sr[i]
        min_i = i
    }
}
print("Zawodnik z najwieksza srednia: Id: \(zaw[max_i].identyfikator), {\(zaw[max_i].Proba1), \(zaw[max_i].Proba2), \(zaw[max_i].Proba3)}")
zaw.remove(at: min_i)
print("Po usunieciu najgorszego:")
print(zaw)



