//
//  ContentView.swift
//  Desafio2
//
//  Created by Turma01-9 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("imagem")
                .resizable()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaledToFit()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .padding(20)
            VStack(spacing: 10){
                Text("HackaTruck")
                    .foregroundColor(.red)
                    .bold()
                    .font(.title)
                Text("77 universidades")
                    .foregroundColor(.blue)
                    .italic()
                Text("5 regiões do Brasil")
                    .foregroundColor(.yellow)
                    .italic()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
