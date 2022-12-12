import Foundation

func Liczb () -> (Int, Int, Int){
    return (Int.random(in: 1..<250),Int.random(in: 1..<250),Int.random(in: 1..<250))
}

func Show (a: Int, b: Int, c: Int) -> Int{
    let tab : [Int] = [a,b,c]
    return tab.max()!
}

func Show2 (a: Int, b: Int, c: Int) -> Int{
    let tab : [Int] = [a,b,c]
    return tab.min()!
}

func Show3 (a: Int, b: Int, c: Int) -> (Int, Int){
    let tab : [Int] = [a,b,c]
    return (tab.max()!, tab.min()! )
}

print(Liczb())
print(Show(a: 5, b: 9, c: 11))
print(Show2(a: 5, b: 9, c: 11))
print(Show3(a: 5, b: 9, c: 11))
