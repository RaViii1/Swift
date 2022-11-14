import Swift
import Foundation
var arr : [Int] = []
var rand : Int = 0
var wczyt : Int = 0
var a : Int = 0
repeat{
    print("Podaj wielkośc tablicy  (calkowita dodatnia): ")
    guard let Liczba = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    a = Liczba
}while(a < 0)

print("Podaj elementy tablicy: ")
for _ in 1...a{
   if let temp = Int(readLine()!){
    rand = temp
    arr.append(rand)
}
}
print("Zawartosc tablicy: ")
for element in arr {
  print(element)
}

print("Wczytana liczba: ")

if let temp = Int(readLine()!){
    wczyt = temp
}

if(wczyt == arr.first){
    print("Wczytana liczba jest równa pierwszemu elementowi")
}else{
    print("Nie jest równa pierwszemu elementowi")
}

if(wczyt == arr.last){
    print("Wczytana liczba jest równa ostatniemu elementowi")
}else{
    print("Nie jest równa ostatniemu elementowi")
}
