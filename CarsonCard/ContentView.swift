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
                Image("carson")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Carson Cameron Clark")
                    .font(Font.custom("Pacifico-Regular", size: 30))
                    .bold()
                    .foregroundColor(.white)
                Text("Systems Analyst")
                    .foregroundColor(.white)
                    .font(.system(size: 19))
                Divider()
                InfoView(phoneNumberIcon: "phone.fill", phoneNumber: "250-415-0970")
            }
        }
    }
}

#Preview {
    ContentView()
}

struct InfoView: View {
    let phoneNumberIcon: String
    let phoneNumber: String
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 40)
            .overlay(HStack {
                Image(systemName: phoneNumberIcon)
                    .foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52))
                Text(phoneNumber)
                    .bold()
            })
            .padding(.all)
    }
}
