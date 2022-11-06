import Swift
import Foundation

var str: String?
var a: Int?
var num: Int = 0
repeat{
    print("Podaj liczbę 3 cyfrową: ")
    str = readLine()
    a = Int(str!)
    num = a!
} while(a == nil) || ( (a! < 100) || (a! > 999))


var b : Int = 0 
var c : Int = 0 
var d : Int = 0 
b = num / 100 % 10
c = num / 10 % 10
d = num  % 10

var geo: Double = 0.0
geo = pow(Double(b*c*d),1/3)
print("Srednia geometryczna = \(geo)")
