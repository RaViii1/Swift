
import Foundation

let num : Int?

print("Podaj liczbe calkowitą: ")
guard let num = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita")
}
var arr : [Int] = []
var minloc : [Int] = []
var maxloc : [Int] = []

for _ in 0...num-1 {
        print("Podaj liczbe: ", terminator: "")
        var liczba : Int? = Int(readLine()!)
        if (liczba == nil) {
            print("Nieporawne dane")
            break
        }
    arr.append(liczba!)
}
for i in 1...arr.count-2 {

    if ( (arr[i-1] > arr[i]) && (arr[i] < arr[i+1])){
        minloc.append(arr[i])
    }
    if ((arr[i-1] < arr[i]) && (arr[i] > arr[i + 1])){
        maxloc.append(arr[i])
    }
}
print("[\(arr)]")
print("Minima lokalne : \(minloc)")
print("Maxima lokalne : \(maxloc)")
