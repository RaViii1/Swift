
import Foundation

protocol LiczbaZespolona {
    var re: Double {get}
    var im: Double {get}
}

class OperacjeNaLiczbachZespolonych: LiczbaZespolona{
    
    var re = 3.12
    var im = 5.4

    
    func show() -> Void{
        print("Cześć rzeczywista: ", re, "część zespolna: \(im)i" )
    }
    
    func add() -> (Double,Double) {
        print("Podaj część rzeczywsitą", terminator: ":")
        guard let x = Double(readLine()!) else {
            fatalError("To nie jest liczba rzeczywsita")
        }
        
        print("Podaj część urojoną", terminator: ":")
        guard let y = Double(readLine()!) else {
            fatalError("To nie jest liczba rzeczywsita")
        }
        re = re+x
        im = im+y
        return (re, im)
    }
    
    func sub() -> (Double,Double) {
        print("Podaj część rzeczywsitą", terminator: ":")
        guard let x = Double(readLine()!) else {
            fatalError("To nie jest liczba rzeczywsita")
        }
        
        print("Podaj część urojoną", terminator: ":")
        guard let y = Double(readLine()!) else {
            fatalError("To nie jest liczba rzeczywsita")
        }
     
        re = re-x
        im = im-y
        return (re, im)
    }
}

var numbers = OperacjeNaLiczbachZespolonych()
numbers.show()
print(numbers.add())
print(numbers.sub())
numbers.show()
