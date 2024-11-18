//
//  ContentView.swift
//  Flux
//
//  Created by Jayvirsinh Raj on 2024-11-18.
//
import SwiftUI

struct ContentView: View {
    @State private var isActive = false

    var body: some View {
        ZStack {
            Color("backgroundColor")
                .ignoresSafeArea()
            if isActive {
                // Navigate to the main view after the splash screen
//                HomeView() // Replace this with your main home view
            } else {
                // Splash screen content
                VStack {
                    Image("fluxIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    Text("Flux")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            isActive = true
                        }
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
