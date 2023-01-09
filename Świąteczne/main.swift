enum Ozdoba : String, CaseIterable {
    case Bombka = "O"
    case Pierniczek = "P"
    case Gwiazdka = "X"
}

enum Drzewa : String, CaseIterable {
    case O = "*"
    case P = "P"
    case X = "X"
}

var choinka: Choinka = Choinka(lPoziomow: 3, hPnia: 3, lOzdob: 2, tOzdob: [Ozdoba.Gwiazdka], h: 3, rokZas: 1924)
choinka.rysujDecChoinke(layercount: 3, levelcount: 4)
