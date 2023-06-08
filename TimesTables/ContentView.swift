//
//  ContentView.swift
//  TimesTables
//
//  Created by Blair Duddy on 2023-06-08.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    @State private var finalAlert = false
    @State private var userSelection = 2
    @State private var selectedNumberofQuestions = 5
    @State private var userAnswer = ""
    
    let numOfQuestions = [5, 10, 15, 20]
    let questionNumber = [Int]()
    let question = [Int]()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Which times tables do you want to work up to today?")
                    Stepper("\(userSelection)", value: $userSelection, in: 2...12)
                }
                
                Section {
                    Text("How many questions do you want to answer?")
                    Picker("Number of questions", selection: $selectedNumberofQuestions) {
                        ForEach(numOfQuestions, id: \.self) { num in
                            Text("\(num)")
                        }
                    }.pickerStyle(.segmented)
                }
                
                Section {
                    List {
                        Text("2 x 2 = ?")
                        Text("2 x 4 = ?")
                        Text("2 x 7 = ?")
                        Text("2 x 9 = ?")
                        Text("2 x 6 = ?")
                    }
                }
                
                Section {
                    TextField("Answer", text: $userAnswer)
                        .padding()
                        .keyboardType(.decimalPad)
                }
                
            }
            .navigationTitle("Times Tables")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
