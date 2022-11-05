import Foundation


let currentYear = 2022
print("Podaj rok urodzenia: ")
var usrYear = readLine()!
if let tmp=Int(usrYear){
    print("Masz \(currentYear-tmp) lat")
}

