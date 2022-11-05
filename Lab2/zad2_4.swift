import Foundation

var a, b, z, s, price : Float?

print("Podaj bok a: ", terminator: "")
var userInput = readLine()
a = Float(userInput!)

print("Podaj bok b: ", terminator: "")
userInput = readLine()
b = Float(userInput!)

print("Podaj bok z: ", terminator: "")
userInput = readLine()
z = Float(userInput!)

print("Podaj szerokosc drzwi: ", terminator: "")
userInput = readLine()
s = Float(userInput!)

print("Podaj cene listwy za 1m: ", terminator: "")
userInput = readLine()
price = Float(userInput!)

if (a != nil && b != nil && z != nil && s != nil && price != nil) {
    let perimeter = 2 * a! + 4 * b! + 2 * z! - 2 * s!
    let toPay = perimeter * price!
    print(String(format: "Potrzebujesz: %.2fm listwy\nMusisz zaplacic: %.2f",perimeter, toPay))
}
else {
    print("Bledne dane")
}
