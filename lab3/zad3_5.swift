//
//  main.swift
//  zad3_5
//
//  Created by student on 17/10/2022.
//

import Foundation
var str : String = ""
var str2 : String = ""
var pref : String = ""
var x : Int = 0
print("Podaj dowolny ciąg ")
if let temp = readLine(){
    str = temp
}
print("Podaj dowolny ciąg ")
if let temp = readLine(){
    str2 = temp
}

print("Podaj dowolny prefix: ")
if let temp = readLine(){
    pref = temp
}
if str == str2{
    print("Ciągi są równe WoW!")
    
}else{
    print("Ciągi nie są równe!")
}
x = pref.count
if str.prefix(x) == pref{
    print("prefix występuje w ciągu 1")
}else{
    print("prefix nie występuje w ciągu 1")
}
if str.suffix(x) == pref{
    print("Sufix występuje w ciągu 1")
}else{
    print("Sufix nie występuje w ciągu 1")
}
print("\n")
if str2.prefix(x) == pref{
    print("prefix występuje w ciągu 2")
}else{
    print("prefix nie występuje w ciągu 2")
}


if str2.suffix(x) == pref{
    print("Sufix występuje w ciągu 2")
}else{
    print("Sufix nie występuje w ciągu 2")
}

