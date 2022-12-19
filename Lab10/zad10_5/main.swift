//
//  main.swift
//  lab10
//
//  Created by student on 19/12/2022.
//

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


print("________Zad 6________")
var pr1 = Pracownik(imie: "Marcin", nazwisko: "Basak", rokUr: 2001, iloscH: 30, rokZatrudnienia: 2021, stawkazaH: 30, stanowisko: K.TeamLeader, nazwaFirmy: "Devops")
var pr2 = Pracownik(imie: "Jakub", nazwisko: "Baran", rokUr: 2001, iloscH: 30, rokZatrudnienia: 2020, stawkazaH: 50, stanowisko: K.leadDesigner, nazwaFirmy: "Devops")

pr1.wyswietl()

print(pr1.yearsOfWorking())
print(pr1.salary())

pr2.wyswietl()

print(pr2.yearsOfWorking())
print(pr2.salary())


