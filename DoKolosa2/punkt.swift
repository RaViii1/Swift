import Foundation

class Point {
    var x : Double
    var y : Double
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

class Dane2P : Point{
    var ab : (a: Point,b: Point)
    init(ab : (Point, Point), x : Double, y: Double ){
        self.ab = ab
        super.init(x: x, y: y)
    }
    
    func quarter (p : Point) -> Int {
        if (p.x >= 0) {
            if (p.y >= 0) {
                return 1
            }
            return 4
        }
        if (p.y >= 0) {
            return 2
        }
        return 3
    }
}

