//
//  ContentView.swift
//  Flux
//
//  Created by Jayvirsinh Raj on 2024-11-16.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to Flux!")
                .font(.largeTitle)
                .padding()

            Text("Your daily progress:")
                .font(.title2)
                .padding()

            HStack {
                VStack {
                    Text("Steps")
                        .font(.headline)
                    Text("2000")
                        .font(.body)
                }
                VStack {
                    Text("Calories")
                        .font(.headline)
                    Text("300")
                        .font(.body)
                }
            }
            .padding()

            Button(action: {
                // Trigger workout tracker or other functionality
            }) {
                Text("Start Workout")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
            .padding()
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
