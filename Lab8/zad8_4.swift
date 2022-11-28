import Foundation


enum Months : String, CaseIterable{
     case January = "Sty"
     case February = "Lut"
     case March = "Mar"
     case April = "Kwi"
     case May = "Maj"
     case June = "Cze"
     case July = "Lip"
     case August = "Sie"
     case September = "Wrz"
     case October = "Paz"
     case November = "Lis"
     case December = "Gru"
}

var month : Months = Months.January


print("Podaj miesicac:", terminator: " ")
guard let temp = readLine() else{
    fatalError("Bledny miesiac")
}

for i in Months.allCases{
    if (temp == i.rawValue){
        month = Months(rawValue: temp)!
        break
    }
}

switch month{
case .March, .April, .May: print("Wiosna")
case .June, .July, .August: print("Lato")
case .September, .October, .November: print("Jesien")
case .December, .January, .February: print("Zima")
}
