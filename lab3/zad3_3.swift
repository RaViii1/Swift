import Foundation

var name : String = ""
var name2 : String = ""
var lastName : String = ""
var year : String = ""
var str1 = ""
print("Podaj swoje imie:")
if let temp = readLine(){
    name = temp
}

print("Podaj swoje drugie imie:")
if let temp = readLine(){
    name2 = temp
}
print("Podaj swoje nazwisko:")
if let temp = readLine(){
    lastName = temp
}
print("Podaj swoj rok urodzenia:")
if let temp = readLine() {
    year = temp
}
str1 = name + ", " + name2 + ", " + lastName + ", " + year
print(str1)
//Polecenie 2
let nl : Int = Int(name.count) 
let n12 : Int = name2.count 
let srl : Int = lastName.count 
let yl : Int = year.count 

var x = n12 + 2
for _ in 1...x {
    var i = str1.index(str1.startIndex, offsetBy: nl+1)
    var removed_String = str1.remove(at: i)
    }
print(str1)
//Polecenie 3
