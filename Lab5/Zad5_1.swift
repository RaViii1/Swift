var licz : Int = 0
var t1 : Int = 0
var t2 : Int = 1
var nextTerm : Int = 0

print("Podaj liczbe calkowitą: ")
guard let licz = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita")
}

repeat{

nextTerm = t1 + t2;
t1 = t2;
t2 = nextTerm;
print(nextTerm)
    
}while(licz > nextTerm)
