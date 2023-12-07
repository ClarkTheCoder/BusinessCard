//
//  ContentView.swift
//  CarsonCard
//
//  Created by carson on 2023-12-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .ignoresSafeArea(.all)
            VStack {
                Text("Carson Cameron Clark")
                    .font(Font.custom("Pacifico-Regular", size: 25))
                    .bold()
                    .foregroundColor(.white)
                Text("Systems Analyst")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
