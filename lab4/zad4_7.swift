import Foundation
var pesel : Int = 0

print("Podaj numer pesel (11 Cyfr): ")
if let temp = Int(readLine()!){
    pesel = temp
}
var x = pesel/10;
var spr = x%10;
if spr % 2 == 0{
    print("Pesel należy do kobiety")
}else{
    print("Pesel należy do mężczyzny")
}
/////////////////V2////////////////////
import Foundation
 
print("Podaj pesel: ")
var a , b , spr: Int
let pesel = readLine()!
let range = NSRange(location: 0, length: pesel.utf16.count)
let regex = try! NSRegularExpression(pattern: "[0-9]{11}")
if regex.firstMatch(in: pesel, options: [], range: range) != nil {
    print("Poprawny pesel")
    a = Int(pesel)!;
    b = a/10;
    spr = b%10;
    if spr % 2 == 0{
        print("Pesel należy do kobiety")
    }else{
        print("Pesel należy do mężczyzny")
    }
}else{
    print("Błędny pesel")
}
 
