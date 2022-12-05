import Foundation

var samochody = Set<String>()
samochody.insert("auto1")
samochody.insert("auto2")
samochody.insert("auto3")
samochody.insert("auto4")
samochody.insert("auto5")
samochody.insert("auto6")

for i in samochody {
    print(i)
}

print("Podaj model samochodu", terminator: ": ")
let x : String = readLine()!

if samochody.contains(x) {
    samochody.remove(x)
    print("Usunieto \(x)")
}
else {
    print("Nie ma takiego modelu!")
}
