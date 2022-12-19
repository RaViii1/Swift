import Foundation

class Prostopadłościan : Prostokąt{
    var h : Double = 1
    
        init(a: Double, b: Double , h: Double) {
        self.h = h
        super .init(a: a, b: b)
    }
    override func pole() -> Double{
        return (2*(a*h) + 2*(b*h) + 2*(a*b))
    }
    
    func sumaKraw() -> Double{
        return 4 * (a + b + h)
    }
    func obj() -> Double{
        return a*b*h
    }
    
    override func show(){
        print("Bok a: \(a)")
        print("Bok b: \(b)")
        print("Bok h: \(h)")
        print("Pole: ", pole())
        print("Suma krawedzi: ", sumaKraw())
        print("Pole: ", obj())
        
    }
}
