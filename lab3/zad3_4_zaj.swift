//
//  main.swift
//  zad3_4
//
//  Created by student on 17/10/2022.
//

import Foundation

var str : String = ""
var str2 : String = ""
var str3 : Int = 0
print("Podaj dowolny ciąg ")
if let temp = readLine(){
    str = temp
}
print("Podaj pojedyńczy znak: ")
if let temp = readLine(){
    str2 = temp
}

print("Podaj liczbe calkowita: ")
if let temp = Int(readLine()!){
    str3 = temp
}

if str.prefix(1) == str2{
    print("Znak jest równy początkowi ciągu")
}
else if str.hasSuffix(str2){
    print("Znak jest równy końcowi ciągu")
}
else if (str.index(str.endIndex, offsetBy: str3)) == str2
{
    
    print("Znak znajduje się na indexie: \(str3) oddalonym od początku ciągu" )
}

print(str.prefix(str3))


