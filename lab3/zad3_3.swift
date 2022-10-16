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
//Polecenie 
