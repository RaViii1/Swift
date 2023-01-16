//
//  Choinka.swift
//  xd
//
//  Created by student on 09/01/2023.
//

import Foundation

class Choinka : Drzewo{
    var lPoziomow : Int
    var hPnia : Int
    var lOzdob : Int
    var tOzdob : [Ozdoba?] = []
    
    init(lPoziomow: Int, hPnia: Int, lOzdob: Int, tOzdob: [Ozdoba?], h : Int, typDrzewa: Drzewa? = nil , rokZas : Int) {
        self.lPoziomow = lPoziomow
        self.hPnia = hPnia
        self.lOzdob = lOzdob
        self.tOzdob = tOzdob
        super.init(h: h, typDrzewa: typDrzewa , rokZas: rokZas)
    }
    
    override func show() {
        print("Liczba poziomów:", lPoziomow)
        print("Wysokość pnia:", hPnia)
        print("Liczba ozdób:", lOzdob)
        print("Typy ozdób:", tOzdob)
    }
    
    func rysujChoinke(layercount:Int, levelcount:Int) {
    var length = layercount * levelcount
    var starcount = 1
    var spacecount = length
    for _ in 1...layercount {
    for _ in 1...levelcount {
            for _ in 1...spacecount{
                print(" ",terminator: "")
            }
            for _ in 1...starcount {
                print("*",terminator: "")
            }
            print()
            starcount += 2
            spacecount -= 1
        }
        starcount = starcount - 2
        spacecount = spacecount + 1
        if levelcount <= 3 {starcount -= 2
            spacecount += 1
            } else {
                starcount -= 4
                spacecount += 2
            }
        }
        spacecount = length;
        for _ in 1...3 { //3 to wysokość pnia
            for _ in 1...spacecount-1 {
            print(" ",terminator: "")
            }
            for _ in 1...3 {
            print("#",terminator: "")
            }
            print()
        }
    }
    
    func drawDecorated (layercount : Int, levelcount : Int) {
        var cnt = self.oCount
        let length = layercount * levelcount
        var starcount = 1
        var spacecount = length
        for _ in 1...layercount {
            for _ in 1...levelcount {
                for _ in 1...spacecount {
                    print(" ",terminator: "")
                }
                for i in 1...starcount {
                    if (i % 2 == 0 && cnt > 0) {
                        let r : Int = Int.random(in: 0..<oType.count)
                        let o : String = self.oType[r]?.rawValue ?? "o"
                        print("\(o)", terminator: "")
                        cnt -= 1
                    }
                    else {
                        print("*",terminator: "")
                    }
                }
                print()
                starcount += 2
                spacecount -= 1
            }
            starcount = starcount - 2
            spacecount = spacecount + 1
            if levelcount <= 3 {
                starcount -= 2
                spacecount += 1
                
            } else {
                starcount -= 4
                spacecount += 2
            }
        }
        spacecount = length;
        for _ in 1...self.rootHeight {
            for _ in 1...spacecount-1 {
                print(" ",terminator: "")
            }
            for _ in 1...3 {
                print("#",terminator: "")
            }
            print()
        }
    }
    func ozdobyDoKupienia (layercount : Int, levelcount : Int) -> Int {
        var cnt = 0;
        let length = layercount * levelcount
        var starcount = 1
        var spacecount = length
        for _ in 1...layercount {
            for _ in 1...levelcount {
                for i in 1...starcount {
                    if (i % 2 == 0) {
                        cnt += 1
                    }
                }
                starcount += 2
                spacecount -= 1
            }
            starcount = starcount - 2
            spacecount = spacecount + 1
            if levelcount <= 3 {
                starcount -= 2
                spacecount += 1
                
            } else {
                starcount -= 4
                spacecount += 2
            }
        }
        return cnt - self.oCount
    }
}
    

}
