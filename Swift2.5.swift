//
//  main.swift
//  zad2.5
//
//  Created by student on 10/10/2022.
//

import Foundation

var sr : Float
var licz : Int
var suma: Int = 0
for _ in 1...3 {
    licz = Int.random(in: 1...10)
    print("Wylosowana iczba: ", licz)
    suma += licz
}
sr = Float(suma)/3
print(suma)
print("Średnia: \(sr)")

