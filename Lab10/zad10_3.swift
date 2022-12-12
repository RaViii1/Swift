import Foundation

struct punkt{
    var x : Double
    var y : Double
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

func wczytaj() -> punkt{
    print("Podaj współrzędną x", terminator: ": ")
    guard let x = Double(readLine()!) else {
        fatalError("To nie jest liczba calkowita!")
    }
    print("Podaj współrzędną y", terminator: ": ")
    guard let y = Double(readLine()!) else {
        fatalError("To nie jest liczba calkowita!")
    }
    return punkt(x: x, y: y)
}

func odl(punkt1 : punkt, punkt2 : punkt) -> Double{
    return sqrt(pow(punkt2.x - punkt1.x, 2) + pow(punkt2.y - punkt1.y, 2) )
}

var punkt1 : punkt = wczytaj()
var punkt2 : punkt = wczytaj()

print(odl(punkt1: punkt1, punkt2: punkt2))

func cw (p : punkt) -> Int{
    if(p.x > 0 && p.y > 0) {return 1}
    if(p.x > 0 && p.y < 0) {return 4}
    if(p.x < 0 && p.y < 0) {return 3}
    if(p.x < 0 && p.y > 0) {return 2}
    return 0
}

print(cw(p: punkt1))


func inSqure(p1 : punkt, bok : Double) -> Void{
    
}

