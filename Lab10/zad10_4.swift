import Foundation
var x : Int 
var arr : [Int] = []
repeat{
    print("Podaj wielokośc tablicy", terminator: ": " )
guard let temp = Int(readLine()!) else{
    fatalError("zła dana")
    }
    x = temp
}while(x < 0)

for _ in 0..<x{
    print("Podaj wartosc do tablicy", terminator: ": " )
    guard let temp = Int(readLine()!) else{
            fatalError("zła dana")
        }
    arr.append(temp)
}

print("Max in arr: ", arr.max()!)
print("min in arr: ", arr.min()!)

var avg : Double = 0.0
for i in 0..<x{
    avg += Double(arr[i])
}
avg = avg/Double(x)
print("avg in arr: ", avg)


func tab (size: Int) -> [Int]{
    var newArray : [Int] = []
    for _ in 0..<size{
         print("Podaj wartosc do tablicy", terminator: ": " )
        guard let temp = Int(readLine()!) else{
            fatalError("zła dana")
        }
        newArray.append(temp)
    }
    return newArray
}
//print("tablica z funkcji tab o wielkosci 3" )
//print(tab(size: 3))

func printTab (tab: [Int]) -> Void{
    print("[", terminator: "")
    for i in 0..<tab.count{
        print(tab[i], terminator: ", ")
    }
    print("]")
}
printTab(tab: arr)

func maxTab (tab: [Int]) -> (val: Int, index: Int){
    var maxVal : Int = tab[0]
    var maxIdx : Int = 0
    for i in 0..<tab.count-1{
        if(maxVal < tab[i+1]){
            maxVal = tab[i+1]
            maxIdx = i+1
        }
    }
    return (maxVal, maxIdx)
}
print("Maxymalny element: ", terminator: ": ")
print(maxTab(tab: arr))

func minTab (tab: [Int]) -> (val: Int, index: Int){
    var minVal : Int = tab[0]
    var minIdx : Int = 0
    for i in 0..<tab.count-1{
        if(minVal > tab[i+1]){
            minVal = tab[i+1]
            minIdx = i+1
        }
    }
    return (minVal, minIdx)
}
print("Minimalny element: ", terminator: ": ")
print(minTab(tab: arr))

func mySwap(tab: [Int]) -> [Int]{
    var tab2 : [Int] = tab
    print("Przed zmianą: ", terminator: ": ")
    printTab(tab: tab2)
    let mini = minTab(tab:tab2)
    let maxi = maxTab(tab:tab2)
    tab2[mini.index] = maxi.val
    tab2[maxi.index] = mini.val
    print("Po zmianie: ", terminator: ": ")
    printTab(tab: tab2)
    return tab2
}

mySwap(tab: arr)

func myAverage(tab: [Int]) -> Double{
    var sum : Int = 0
    var avg : Double = 0
    for i in 0..<tab.count{
        sum += tab[i]
    }
    avg = Double(sum)/Double(tab.count)
    return avg
}
print("Średnia: ", terminator: ": ")
print(myAverage(tab: arr))
