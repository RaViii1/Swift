import Swift
import Foundation

var str: String = ""
print("Podaj dowolny łancuch znaków: ")
if let temp = readLine(){
    str = temp
}
let reversed = String(str.reversed())
print("Odwrócony ciąg znaków: \(reversed)")
if(reversed == str){
    print("string to palindrom")
}
else{
     print("string nie jest palindromem")
}

/////////////V2///////////////////////
var tekst : String?
print("Podaj tekst: ", terminator: "")
tekst = String(readLine()!)

if (tekst != nil) {
    let tablica = Array(tekst!)
    var palindrome = true

    for i in 0...(tablica.count / 2){
        if (tablica[i] != tablica[tablica.count - 1 - i]) {
            palindrome = false
            break
        }
    }
    if (palindrome) {
        print("Wyraz jest palindromem")
    }
    else {
        print("Wyraz nie jest palindromem")
    }
}
else {
    print("Niepoprawne dane")
}
