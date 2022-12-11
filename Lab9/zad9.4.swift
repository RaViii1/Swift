import Foundation

var student : [Int : String] = [:]

for i in 1...2 {
    print("Podaj identyfikator studenta \(i)", terminator: ": ")
    guard let id = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita!")
    }
    print("Podaj nazwisko studenta \(i)", terminator: ": ")
    let n : String = readLine()!
    student[id] = n
}

print("Wszyscy studenci", terminator: ": ")
for (id, nazw) in student {
    print("\(id) -> \(nazw)")
}

print("Podaj szukany identyfikator studenta", terminator: ": ")
guard let id = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita!")
}
if student.keys.contains(id){
    print("identyfikator: ", id, student[id]!)
}else{
    print("Nie ma takiego studenta")
}

print("Podaj szukany identyfikator studenta", terminator: ": ")
guard let id2 = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita!")
}

if student.keys.contains(id2){
    student.removeValue(forKey: id2)
    }
    else{
        print("Nie ma takiego studenta")
    }

print("Po usunięciu:", terminator: "\n")
for (id, nazw) in student {
    print("\(id) -> \(nazw)")
}
