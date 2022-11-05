import Foundation

let Pi : Float = 3.14
print("Podaj promien kola")
var r = readLine()!
if let tmp=Float(r){
    var l : Float = 0.0
    var p: Float = 0.0
    l=2.0*Pi*tmp
    p=Pi*tmp*tmp
    print("Obwod kola wynosi:",String(format: "%.2f", l) + "\nPole kola wynosi:", String(format: "%.2f", p))
}
