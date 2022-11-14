import Foundation
var arr : [Int] = []
var rand : Int = 0
var a : Int = 0
var index : Int = 0
var Leng : Int = 0
var Leng2 : Int = 0
repeat{
    print("Podaj wielkośc tablicy  (calkowita dodatnia): ")
    guard let Liczba = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    a = Liczba
}while(a < 0)

print("Podaj elementy tablicy: ")
for _ in 1...a{
   if let temp = Int(readLine()!){
    rand = temp
    arr.append(rand)
    }
}
print("Podaj index tablicy: ")
guard let n = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
index = n

print("Podaj długość ciagu: ")
guard let x = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
Leng = x
if(Leng>a){
    print("Długość ciągu nie może być większa od wielkości tablicy")
    
}


for _ in 1...arr.count-2 {
    if ((arr[index-1] < arr[index]) && (arr[index] > arr[index + 1])){
        Leng2 += 1
    }
}

