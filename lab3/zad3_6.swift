import Foundation

let ratio = 4.94

var value = 0.0

print("Podaj ilość waluty w PLN którą chcesz przeliczyć na $: ")
if let temp = Double(readLine()!){
    value = temp
}


print("Podana kwota w $: " + String(format: "%.2f", value/ratio))
