import Foundation

enum K : String, CaseIterable {
    case Informatyka = "Informatyka"
    case Matematyka = "Matematyka"
    case Budownictwo = "Budownictwo"
}

class Osoba {
    var imie: String = ""
    var nazwisko: String = ""
    var rokUr: Int = 0
  
    init(imie: String, nazwisko: String, rokUr: Int){
            self.imie = imie
            self.nazwisko = nazwisko
            self.rokUr = rokUr
        }
    func wyswietl() {
            print("Imie: \(imie)")
            print("Nazwisko: \(nazwisko)")
            print("Rok urodzenia: \(rokUr)")
        }
    func age() -> Int{
            let currentYear : Int = 2022
            return currentYear - rokUr
        }
}


class Student : Osoba {
    var indexNr : Int
    var kierunek : K
    var oceny : [Double]
    
     init(imie: String, nazwisko: String, rokUr: Int, indexNr: Int, kierunek: K, oceny: [Double]){
            self.indexNr = indexNr
            self.kierunek = kierunek
            self.oceny = oceny
            super.init(imie: imie, nazwisko: nazwisko, rokUr: rokUr)
        }
        
        func srednia(){
            var suma : Double = 0.0
            for i in 1..<5{
                if(oceny[i] >= 2){
                    suma += oceny[i]
                }else{
                    print("Wśród ocen występuje błąd")
                    break
                }
                
                
            }
            print("Srednia ocena: ", suma / 5)
            
        }
        
        func show(){
            print("Imie: \(imie)")
            print("Nazwisko: \(nazwisko)")
            print("Rok urodzenia: \(rokUr)")
            print("Index studenta: ", indexNr)
            
            if kierunek == K.Informatyka{
            print("Kierunek: Informatyka")
            }
            else if(kierunek == K.Matematyka){
                    print("kierunek: Matematyka")
                }
            else{
                    print("kierunek: Budownictwo")
                }
            print("Oceny studenta: ", oceny, terminator: ", ")
            print()
            
        
        }
        

}

func stworz () -> [((imie: String, nazwisko: String, rokUr: Int, indexNr: Int, oceny: [Double], kierunek: K))] {

    print("Podaj liczbe studentow", terminator: ": ")
        guard let s = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
    }
                
    var arr : [((imie: String, nazwisko: String, rokUr: Int, indexNr: Int, oceny: [Double], kierunek: K))] = []
    for _ in 0..<s{
    print("Podaj Imie ", terminator: ": ")
    guard let im = readLine() else {
            fatalError("To nie jest liczba calkowita!")
        }
            
    
    print("Podaj nazwisko ", terminator: ": ")
    guard let n = readLine() else {
            fatalError("To nie jest liczba calkowita!")
        }
            
    
    print("Podaj rok urodzenia ", terminator: ": ")
    guard let ur = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
        }
            
    
    
    print("Podaj numer indexu ", terminator: ": ")
    guard let ind = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
        }
            
    
    var ocenki: [Double] = []
    for z in 1..<6{
        print("Podaj ocene \(z)", terminator: ": ")
    guard let o = Double(readLine()!) else {
            fatalError("To nie jest poprawna ocena!")
            }
            ocenki.append(o)
        }
        
    print("Podaj kierunek", terminator: ": ")
    guard let kier = readLine() else {
        fatalError("To nie jest Prawidlowy kiernuek!")
    }
    var x : String = ""
    for i in K.allCases {
        if (kier == i.rawValue) {
            x = kier
            break
        }    
        
    }
    arr.append((imie: im, nazwisko: n, rokUr: ur, indexNr: ind, oceny: ocenki, kierunek: K(rawValue: x)!))
 }
    return arr
}

class StudentNaErasmusie: Student{
    var NazwaUczelni: String = ""
    var DataRozpoczecia : String = ""
    var DataZakonczenia : String = ""
    var Kursy : [(String, Double)] = []
    
     init(NazwaUczelni: String, DataRozpoczecia: String, DataZakonczenia: String, Kursy: [(String, Double)]){
            self.NazwaUczelni = NazwaUczelni
            self.DataRozpoczecia = DataRozpoczecia
            self.DataZakonczenia = DataZakonczenia
            self.Kursy = Kursy
            super.init(imie: imie, nazwisko: nazwisko, rokUr: rokUr, indexNr: indexNr, kierunek: K.kierunek, oceny: oceny)


    }
    
    override func show(){
            print("Imie: \(imie)")
            print("Nazwisko: \(nazwisko)")
            print("Rok urodzenia: \(rokUr)")
            print("Index studenta: ", indexNr)
            print("NazwaUczelni: \(NazwaUczelni)")
            print("DataRozpoczecia: \(DataRozpoczecia) - DataZakonczenia: \(DataZakonczenia)")
            print("Kursy: \(Kursy)")
            
        }

}

var antonek = StudentNaErasmusie(NazwaUczelni: "Pollub", DataRozpoczecia: "15.9.2022", DataZakonczenia: "15.1.2023", Kursy: [("Matma", 4.5)])
antonek.show()
