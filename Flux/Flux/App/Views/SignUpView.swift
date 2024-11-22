//
//  SignUpView.swift
//  Flux
//
//  Created by Jayvirsinh Raj on 2024-11-18.
//

import SwiftUI
import GoogleSignIn

struct SignUpView: View {
    @State private var user: GIDGoogleUser?

    var body: some View {
        VStack {
            // Google Sign-In Button
            GIDSignInButton()
                .frame(height: 50)
                .onTapGesture {
                    signInWithGoogle()
                }
        }
        .onAppear {
            // Make sure GoogleSignIn is configured
            GIDSignIn.sharedInstance().delegate = self
        }
    }

    private func signInWithGoogle() {
        GIDSignIn.sharedInstance().signIn(withPresenting: getRootViewController())
    }

    private func getRootViewController() -> UIViewController {
        return UIApplication.shared.windows.first!.rootViewController!
    }
}

// MARK: - GIDSignInDelegate
extension SignUpView: GIDSignInDelegate {
    func sign(inWillDispatch signIn: GIDSignIn, error: Error?) {
        // Handle sign-in completion
        if let error = error {
            print("Google Sign-In failed: \(error.localizedDescription)")
            return
        }
        print("User signed in successfully!")
    }

    func sign(_ signIn: GIDSignIn, didSignInFor user: GIDGoogleUser?, withError error: Error?) {
        if let error = error {
            print("Google Sign-In failed: \(error.localizedDescription)")
            return
        }
        self.user = user
        print("User signed in: \(user?.profile?.name ?? "Unknown")")
    }
}
