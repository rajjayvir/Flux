//
//  SwiftUIView.swift
//  Flux
//
//  Created by Jayvirsinh Raj on 2024-11-18.
//

import SwiftUI

@main
struct FluxApp: App {
    // State object to manage app-wide data
//    @StateObject private var healthViewModel = HealthViewModel()
//    @StateObject private var workoutViewModel = WorkoutViewModel()

    var body: some Scene {
        WindowGroup {
            SplashView()
//                .environmentObject(healthViewModel)  // Providing the ViewModels to the environment
//                .environmentObject(workoutViewModel)
        }
    }
}

