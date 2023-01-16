
import Foundation

enum mathErrors : Error{
    case Divedby0
    case SqrtNeg
}

func validateDiv (a: Double, b: Double) throws{
    guard b != 0 else{
        throw mathErrors.Divedby0
    }
}

func validateSqrt (a :Double) throws {
    guard a > 0 else {
        throw mathErrors.SqrtNeg
    }
}

var a : Double = 2.0
var b : Double = 0.0
var c : Double = -0.1

do {
    try validateDiv(a: a, b: b)
    print("\(a)/\(b) = \(a/b)")
} catch mathErrors.Divedby0 {
    print("Nie da sie dzielic przez 0!")
} catch {
    print("Cos innego")
}

do {
    try validateSqrt(a: c)
    print("Sqrt(\(c)) = \(sqrt(c))")
} catch mathErrors.SqrtNeg {
    print("Wow negative sqrt!")
} catch {
    print("Cos innego")
}
