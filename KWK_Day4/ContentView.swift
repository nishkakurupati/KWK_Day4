//
//  ContentView.swift
//  KWK_Day4
//
//  Created by Scholar on 6/21/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.largeTitle)
            TextField("TYPE YOUR NAME HERE...", text: $name)
                .multilineTextAlignment(.center)
                .border(Color.gray, width:1)
                .padding(.horizontal)
                .font(.title3)
            Button("Submit Name") {
                textTitle = "Welcome, \(name)"
            }
            .cornerRadius(15)
            .padding(.top)
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        } //closes vstack
    } //closes body
} //closes content view

#Preview {
    ContentView()
}
