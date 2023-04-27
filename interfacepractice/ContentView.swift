//
//  ContentView.swift
//  interfacepractice
//
//  Created by Michelle Elias Flores on 4/18/23.
//
import SwiftUI

struct ContentView: View {
    @State private var userName: String = ""
    @State private var favoriteSong: String = ""
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""

    var body: some View {
        ZStack {
            Color(.orange)
                .ignoresSafeArea()
            VStack {
                Text("WELCOME FRIEND!")
                    .font(.largeTitle)
                    .padding(.top, -200)
                Text("to Account Creator!")
                    .font(.largeTitle)
                    .padding(.top, -180)
                Image(systemName: "person.3.sequence.fill")
                Text("Tell me about you!")
                    .font(.largeTitle)
                    .padding(.top)

                TextField("Enter your name", text: $userName)
                    .padding()
                    .background(Color.white)
                TextField("What is your favorite song", text: $favoriteSong)
                    .padding()
                    .background(Color.white)
                Button(action: {
                    alertMessage = "Hello, \(userName)! Your favorite song is \(favoriteSong)."
                    showAlert = true
                }) {
                    Text("Submit")
                        .padding()
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .alert(isPresented:$showAlert) {
                    Alert(title: Text("Your Input"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
