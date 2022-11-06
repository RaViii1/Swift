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
