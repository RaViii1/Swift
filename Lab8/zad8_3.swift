import Foundation


enum Standard : String, CaseIterable{
     case wysoki
     case sredni
     case niski
}
var mieszkanie : [(Lokalizacja: String, powierzchnia: Float, Cena: Float)]

print("Podaj liczbe mieszkan")
guard let n = Int(readLine()!) else{
    fatalError("Nie poprawna wartosc")
}

for i in 0..<n{
    print("Podaj liczbe Lokalizacje")
    guard let loc = readLine() else{
        fatalError("Nie poprawna wartosc")
    }
    
    print("Podaj liczbe powierzchnie")
    guard let loc = Float(readLine()!) else{
        fatalError("Nie poprawna wartosc")
    }
    print("Podaj liczbe Cene: ")
    guard let loc = Float(readLine()!) else{
        fatalError("Nie poprawna wartosc")
    }
}
