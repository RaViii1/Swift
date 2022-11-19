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
////////V2//////////
    
    var n: Int
var indPocz = -1
var liczbaPodciagu, maxLiczbaPodciagu: Int
var t: [Int] = []

repeat{
    print("Podaj liczbe elementów tablicy, min. 3 elementowej")
    guard let a = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita!")
    }
    n = a
}while n < 3

//wczytanie
for _ in 0..<n{
    print("Podaj element calkowity")
    guard let l = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    t.append(l)
}
print("Wczytany ciąg:")
print(t)

//najdluzszy podciag rosnacy
liczbaPodciagu = 1
maxLiczbaPodciagu = 1
for i in 0..<t.count-1{
    if t[i] < t[i+1]{
        liczbaPodciagu += 1
    }else{
        if liczbaPodciagu > maxLiczbaPodciagu{
            maxLiczbaPodciagu = liczbaPodciagu
            indPocz = i - maxLiczbaPodciagu + 1
            liczbaPodciagu = 1
        }
    }
}
if liczbaPodciagu > maxLiczbaPodciagu{
    maxLiczbaPodciagu = liczbaPodciagu
    indPocz = t.count - maxLiczbaPodciagu
}

if maxLiczbaPodciagu == 1{
    print("W ciagu nie ma podciagu rosnacego")
}else{
    print("Najdluzszy podciag rosnacy wystepuje od \(indPocz) i ma \(maxLiczbaPodciagu) elemen.:")
    for i in indPocz..<indPocz+maxLiczbaPodciagu{
        print(t[i])
    }
}

