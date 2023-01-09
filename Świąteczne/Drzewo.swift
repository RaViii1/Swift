
import Foundation

class Drzewo{
    var h: Int
    var typDrzewa : Drzewa?
    var rokZas : Int
        
    init(h: Int, typDrzewa: Drzewa? = nil, rokZas: Int) {
        self.h = h
        self.typDrzewa = typDrzewa
        self.rokZas = rokZas
    }
    
    func show (){
        print("Wysokość: ", h)
        print("Rodzaj drzewa: ", typDrzewa)
        print("Rok zasadzenia: ", rokZas)
    }
}
