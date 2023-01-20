    
    
    print("Podaj liczbe elementów do tablicy", terminator: ": ")
    guard let x = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita!")
    }
    
    var tab : [Int] = []
    
    for i in 1 ... x {
        
        print("Podaj \(i). element", terminator: ": ")
        guard let val = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
        }
        tab.append(val)
    
    }
    
    func show (arr : [Int]) -> Void{
        var sr : Double = 0
        var suma : Double = 0
        var counter : Double = 0
        print("maximum: ", arr.max()!, terminator: " " )
        print("minumum: ", arr.min()!, terminator: " " )
        
        
        for i in 0..<arr.count{
            suma += Double(arr[i])
            counter += 1
        }
        
        sr = suma/counter
        print("Srednia: ", sr, terminator: " " )
    }
    



func getTab (size: Int) -> [Int]{

    
    var tab : [Int] = []
    
    for i in 1 ... size {
        
        print("Podaj \(i). element", terminator: ": ")
        guard let val = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita!")
        }
        tab.append(val)
    
    }
    return tab
}


func showTab (tab : [Int]) -> Void {
    
    print ("Zawartość tablicy: ")
    
    print ("[" , terminator: "")
    for i in 0 ..< tab.count{
        print(tab[i], terminator: ",")
    }
    print ("]")
}


func minInTab (tab : [Int]) -> (Int, Int) {
    
    var minIndex : Int = 0
    var minVal : Int = tab[0]
    for i in 0 ..< tab.count - 1{
        if(tab[i]>tab[i+1]){
            minVal = tab[i+1]
            minIndex = i+1
        }
    }
    return (minVal, minIndex)
}

print(minInTab(tab: tab))


func maxInTab (tab : [Int]) -> (Int, Int) {
    
    var maxIndex : Int = 0
    var maxVal : Int = 0
    for i in 0 ..< tab.count - 1{
        if(tab[i]<tab[i+1]){
            maxVal = tab[i+1]
            maxIndex = i+1
        }
    }
    return (maxVal, maxIndex)
}
print(maxInTab(tab: tab))

func swapMM (tab : [Int]) -> Void {
    
    var newTab = tab
    let min = minInTab(tab: tab)
    let max = maxInTab(tab: tab)
    var tempVal : Int = 0
   
    
    tempVal = min.0
    
    newTab[min.1] = max.0
    newTab[max.1] = tempVal
    
    showTab(tab: tab)
    showTab(tab: newTab)
}
swapMM(tab: tab)

func tabAvg(tab : [Int]) -> Double{
    
    
    var suma : Double = 0
    var counter : Double = 0
    for i in 0 ..< tab.count {
        suma += Double(tab[i])
        counter += 1
    }

    return suma / counter
}

print("Średnia: ", tabAvg(tab : tab))

