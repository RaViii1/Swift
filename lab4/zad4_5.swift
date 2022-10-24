import Foundation
var kod : String = ""

print("Podaj kod pocztowy z myślnikiem: ")
if let temp = readLine(){
    kod = temp
}

switch (kod){
case let kod where kod.hasPrefix("09"): print("Należy do wojewodztwa lubelskiego")
case let kod where kod.hasPrefix("20"): print("Należy do wojewodztwa lubelskiego")
case let kod where kod.hasPrefix("21"): print("Należy do wojewodztwa lubelskiego")
case let kod where kod.hasPrefix("22"): print("Należy do wojewodztwa lubelskiego")
case let kod where kod.hasPrefix("23"): print("Należy do wojewodztwa lubelskiego")
case let kod where kod.hasPrefix("24"): print("Należy do wojewodztwa lubelskiego")
default: print("kod nie jest przypisany do wojewodztwa lubelskiego")
}


