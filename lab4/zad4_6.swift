import Foundation
print("Podaj znak")
var s : String = readLine()!
var c : Character = s[s.startIndex]
var u : Character = c.uppercased()[c.uppercased().startIndex]

switch (u) {
  case "A", "E", "I", "O", "U", "Y": print("Samogloska")
  case "B"..."D", "F"..."H", "J"..."N", "P"..."T", "V"..."X", "Z": print("Spolgloska")

case let u where u.isSymbol : print("To znak spejcalny")
case let u where u.isNumber : print("To cyfra")
  default: print("Inny znak")
}
