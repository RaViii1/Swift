/**

                            Online Swift Compiler.
                Code, Compile, Run and Debug Swift script online.
Write your code in this editor and press "Run" button to execute it.

*/

 import Foundation
 
 enum obywatelstwo: String, CaseIterable{
    case hiszpan = "Hiszpanskie"
    case niemiec = "Niemieckie"
    case polak = "Polskie"
 } 
 
 class Osoba{
    var Imie : String = "" 
    var Nazwisko : String = "" 
    var Waga : Double = 0.0 
    var Wzrost : Double = 0.0
    var Pesel : Int = 0
    var Kraj : obywatelstwo?
    init(Imie: String, Nazwisko: String, Waga: Double, Wzrost: Double, Pesel: Int, Kraj: obywatelstwo?){
        self.Imie = Imie
        self.Nazwisko = Nazwisko
        self.Waga = Waga
        self.Wzrost = Wzrost
        self.Pesel = Pesel
        self.Kraj = Kraj
    }
    func show() -> Void{
        print("Imie: \(Imie) - Nazwisko: \(Nazwisko) - Waga: \(Waga) - Wzrost: \(Wzrost) - obywatelstwo: \(Kraj!) ")
    }
 }


var ob1 = Osoba(Imie: "Tomek", Nazwisko: "Domek", Waga: 43.2, Wzrost: 182, Pesel: 12312345678, Kraj: obywatelstwo.polak)


 enum rodzaj: String, CaseIterable{
    case signle = "signle"
    case double = "double"
    case singleAndDouble = "singleAndDouble"
 } 

class Tenisista : Osoba{
    
    var rodzajGry : rodzaj?
    var aktPozycja : Int = Int.random(in: 1...100)
    var sumaPkt : Int = 0
    var NajlepszaPozycja : Int = 0
    var historiaMeczy : [(NazwaTurnieju: String, LiczbaPunktow: Int)] = []  
    init(rodzajGry: rodzaj?, aktPozycja: Int, sumaPkt: Int, NajlepszaPozycja: Int, historiaMeczy: [(NazwaTurnieju: String, LiczbaPunktow: Int)],Imie: String, Nazwisko: String, Waga: Double, Wzrost: Double, Pesel: Int, Kraj: obywatelstwo?){
        self.rodzajGry = rodzajGry
        self.aktPozycja = aktPozycja
        self.sumaPkt = sumaPkt
        self.NajlepszaPozycja = NajlepszaPozycja
        self.historiaMeczy = historiaMeczy
        super.init(Imie: Imie, Nazwisko: Nazwisko, Waga: Waga, Wzrost: Wzrost, Pesel: Pesel, Kraj: Kraj)
    }
    override  func show() -> Void{
        print("Imie: \(Imie) - Nazwisko: \(Nazwisko) - Waga: \(Waga) - Wzrost: \(Wzrost) - obywatelstwo: \(Kraj!) ")
        print("Rodzaj gry: \(rodzajGry!)")
        print("sumaPkt: \(rodzajGry!) - aktPozycja: \(aktPozycja) - NajlepszaPozycja: \(NajlepszaPozycja) - historiaMeczy: \(historiaMeczy)")
        
    }
    
    func addTour() -> [(NazwaTurnieju: String, LiczbaPunktow: Int)]{
        
        print("Podaj nazwe", terminator: ": ")
        guard let x = readLine() else {
            fatalError("To nie jest ")
        }
        print("Podaj liczbe punktwow", terminator: ": ")
        guard let y = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita")
        }
        historiaMeczy.append((NazwaTurnieju: x, LiczbaPunktow: y))
    
        return historiaMeczy
    }
    
    
}

var Tenis1 = Tenisista(rodzajGry: rodzaj.singleAndDouble, aktPozycja: 71, sumaPkt: 256, NajlepszaPozycja: 69, historiaMeczy: [(NazwaTurnieju: "Cos", LiczbaPunktow: 21)],Imie: "Tomek", Nazwisko: "Domek", Waga: 43.2, Wzrost: 182, Pesel: 12312345678, Kraj: obywatelstwo.polak)
Tenis1.show()
Tenis1.addTour()
Tenis1.show()
