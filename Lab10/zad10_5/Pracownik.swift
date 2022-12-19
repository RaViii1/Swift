import Foundation

enum K : String, CaseIterable{
    case leadDesigner = "leadDesigner"
    case juniorDeveloper = "juniorDeveloper"
    case TeamLeader = "TeamLeader"
}

class Pracownik : Osoba {
    var rokZatrudnienia : Int = 0
    var iloscH : Int = 0
    var stawkazaH : Double = 0.0
    var stanowisko : K
    var nazwaFirmy: String = ""
    

    
    init(imie: String, nazwisko: String, rokUr: Int, iloscH: Int, rokZatrudnienia:Int, stawkazaH: Double, stanowisko: K, nazwaFirmy:String){
        self.rokZatrudnienia = rokZatrudnienia
        self.iloscH = iloscH
        self.stawkazaH = stawkazaH
        self.nazwaFirmy = nazwaFirmy
        self.stanowisko = stanowisko
        super.init(imie: imie, nazwisko: nazwisko, rokUr: rokUr)
    }
    func yearsOfWorking() -> Int{
        let currentYear = 2022
        return currentYear - rokZatrudnienia
    }
    func salary() -> Double{
        return Double(iloscH) * stawkazaH
    }
    override func wyswietl() {
        print("Imie: \(imie)")
        print("Nazwisko: \(nazwisko)")
        print("Rok urodzenia: \(rokUr)")
        print("Ilosc godzin: \(iloscH)")
        print("Rok zatrudnienia: \(rokZatrudnienia)")
        print("Stawka za godzine: \(stawkazaH)")
        if stanowisko == K.leadDesigner{
            print("Stanowisko: leadDesigner")
        }
        else if(stanowisko == K.juniorDeveloper){
                print("Stanowisko: juniorDeveloper")
            }
        else{
                print("Stanowisko: TeamLeader")
            }
        }
}
