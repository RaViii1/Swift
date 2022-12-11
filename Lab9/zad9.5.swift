import Foundation

struct loty {
    var wylot : [Int : String]
    var dest : [Int : String]
    var czas : Int
    init(wylot: [Int : String], dest: [Int : String], czas: Int) {
        self.wylot = wylot
        self.dest = dest
        self.czas = czas
    }
}
var n : Int = 0

    print("Podaj liczbe lotow n ", terminator: ": ")
    guard let x = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita!")
    }
    n = x
    
var l : [loty] = []
if (n < 1) {
    fatalError("Liczba lotow musi wynosic co najmniej 1!")
}

for _ in 1...n {
    print("Podaj nr lotniska", terminator: ": ")
        guard let nr = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
        }
        print("Podaj nazwe lotniska", terminator: ": ")
        let nazw = readLine()!
        
         print("Podaj nr lotniska docelowego", terminator: ": ")
        guard let nr2 = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
        }
        print("Podaj nazwe lotniska docelowego", terminator: ": ")
        let nazw2 = readLine()!
        
        print("Podaj czas lotu w min", terminator: ": ")
        guard let czas = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
        }  
        
        l.append(loty(wylot: [nr:nazw], dest: [nr2:nazw2], czas: czas))
}

for i in 0..<n {
    print("Lot \(i+1): Z: ", terminator: "")
    print(l[i].wylot)
    print("Do: ", terminator: "")
    print(l[i].dest)
    print("Czas: \(l[i].czas) min")
    print()
}

var sr : Float = 0.0
var suma : Float = 0.0
for i in 0..<n{
    suma += Float(l[i].czas)
}
sr = suma/Float(n)
print("Średnia lotów wynosi: \(sr)")
print("Loty trwające dłużej niż średnia wszystkich lotów: ", terminator: "")
for i in 0..<n {
    if(Float(l[i].czas) > sr){
        print("Lot \(i+1): Z: ", terminator: "")
        print(l[i].wylot)
        print("Do: ", terminator: "")
        print(l[i].dest)
        print("Czas: \(l[i].czas) min")
        print()
    }else{
        l.remove(at: i)
    }
    
}

print("Po usunięciu lotów którtszych niż śrenia: ", terminator: "")
for i in 0..<n {
    print("Lot \(i+1): Z: ", terminator: "")
    print(l[i].wylot)
    print("Do: ", terminator: "")
    print(l[i].dest)
    print("Czas: \(l[i].czas) min")
    print()
}
