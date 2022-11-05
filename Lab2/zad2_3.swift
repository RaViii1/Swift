import Foundation

print("Podaj bok szescianu")
var a = readLine()!
if let tmp=Float(a){
    var p : Float = 0.0
    var v: Float = 0.0
    p=pow(2, tmp)*6
    v=pow(3, tmp)
    print("Pole całkowite:",String(format: "%.2f", p) + "\nObjętość :", String(format: "%.2f", v))
}
