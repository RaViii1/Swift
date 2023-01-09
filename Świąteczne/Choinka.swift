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
    
    func rysujDecChoinke(layercount:Int, levelcount:Int) {
    let length = layercount * levelcount
    var starcount = 1
    var spacecount = length
    for _ in 1...layercount {
    for _ in 1...levelcount {
            for _ in 1...spacecount{
                print(" ",terminator: "")
            }
            for i in 1...starcount {
                if (i % 2 == 1) {
                    print("O",terminator: "")
                }else{
                    print("*",terminator: "")
                }
                
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
    
    

}
