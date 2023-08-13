//
//  ContentView.swift
//  WeSplit
//
//  Created by Indra Cahyadi on 13/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount: Int = 0
    @State private var name = ""
    
    let meals = ["Tempe", "Bakso", "Pisang"]
    @State private var selectedMeal = "Tempe"
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    
                    TextField("Enter your name", text: $name)
                    
                    Text("Hello, what can I get for you?!")
                    
                    Picker("Select your meal", selection: $selectedMeal) {
                        ForEach(meals, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    Button("How many meals: \(tapCount)") {
                        tapCount += 1
                    }
                    
                    
                    Text("Hello, your name is \(name) and you want \(tapCount) \(selectedMeal)")
                    
                    
                }
            }
            .navigationTitle("Order Meal")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
