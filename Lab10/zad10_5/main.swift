
import Foundation

var os1 = Osoba(imie: "Maciek", nazwisko: "bialy", rokUr: 2005)
var os2 = Osoba(imie: "Tomek", nazwisko: "Domek", rokUr: 2008)

if(os1.age() > os2.age()){
    print("Starsza osoba jest \(os1.imie) \(os1.nazwisko) \(os1.rokUr)")
}
else if (os1.age() < os2.age()){
    print("Starsza osoba jest \(os2.imie) \(os2.nazwisko) \(os2.rokUr)")
}
else{
    print("Osoby sa w tym samym wieku")
}
