import Foundation

class Prostokąt {
    var a : Double = 1
    var b : Double = 1
    
    init(a: Double, b: Double) {
        self.a = a
        self.b = b
    }
    
    func pole() -> Double{
        return a*b
    }
    
    func obw() -> Double{
        return 2*a + 2*b
    }
    func show(){
        print("Bok a: \(a)")
        print("Bok b: \(b)")
        print("Pole: ", pole())
        print("Obowd: ", obw())
        
    }
}
