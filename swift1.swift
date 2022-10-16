//
//  ContentView.swift
//  Swiftui1
//
//  Created by student on 03/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var number1 : String = ""
    @State private var number2 : String = ""
    @State private var number3 : String = ""
    @State private var show : Bool = false
    var body: some View {
        VStack {
            TextField("Number 1:", text: $number1)
            TextField("Number 2:", text: $number2)
            TextField("Number 3:", text: $number3)
            Button("Oblicz") {
                show.toggle()
            }
            if (show) {
                let sum = Int(number1)! +
                Int(number2)! +
                Int(number3)!
                
                let srednia = Float(sum)/3
                
                let suma = "suma: " + String(sum) + "\n"
                            
                let sr = "srednia: " + String(srednia) + "\n"
                Text(suma  + sr)
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
