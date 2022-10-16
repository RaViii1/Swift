//
//  main.swift
//  zad2.1
//
//  Created by student on 10/10/2022.
//

import Foundation


let currentYear = 2022
print("Podaj rok urodzenia: ")
var usrYear = readLine()!
if let tmp=Int(usrYear){
    print("Masz \(currentYear-tmp) lat")
}

