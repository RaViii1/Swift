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
        
        func jakiKier(K: K, tab: [Student]){
            for i in 0..<tab.count{
                if(tab[i].kierunek == kierunek){
                    print(tab[i])
                }
            }
            
        }
        
        
                 
        

}

func stworz () {

    print("Podaj liczbe studentow", terminator: ": ")
        guard let s = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
    }
                
    var arr : [Student] = []
    for i in 0..<s{
    print("Podaj Imie ", terminator: ": ")
    guard let im = readLine() else {
            fatalError("To nie jest liczba calkowita!")
        }
            arr[i].imie = im
    
    print("Podaj nazwisko ", terminator: ": ")
    guard let n = readLine() else {
            fatalError("To nie jest liczba calkowita!")
        }
            arr[i].nazwisko = n
    
    print("Podaj rok urodzenia ", terminator: ": ")
    guard let ur = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
        }
            arr[i].rokUr = ur
    
    
    print("Podaj numer indexu ", terminator: ": ")
    guard let ind = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
        }
            arr[i].indexNr = ind
    

    for z in 1..<6{
        print("Podaj ocene \(z)", terminator: ": ")
    guard let o = Double(readLine()!) else {
            fatalError("To nie jest poprawna ocena!")
            }
            arr[i].oceny.append(o)
        }
    }
}

var student1 = Student(imie: "Marek", nazwisko: "Szewczyk", rokUr: 2001, indexNr: 546412, kierunek: K.Budownictwo, oceny: [5, 3, 3, 5, 5])
student1.show()
student1.srednia()
var Studenci : [Student] = []
stworz()
jakiKier(kierunek: "Budownictwo", tab: Studenci)
