//
//  ContentView.swift
//  Desafio ZStack
//
//  Created by Turma01-9 on 16/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var nome: String = ""
    @State private var showingAlert = false
    var body: some View {
        ZStack{
            Image("estrada")
                .resizable()
                .scaledToFill()
                .frame(width: 1200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .blur(radius: 2)
                .opacity(0.2)
                .ignoresSafeArea()
            VStack {
                
                Text("Bem vindo, \(nome)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                TextField(
                    "",
                    text: $nome
                )
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 260, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(radius: 15)
                        
                    Image("truck")
                        .resizable()
                        .frame(width: 230, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(radius: 15)
                }
                Spacer()
            }
        }
        Button("Entrar") {
            showingAlert = true
        }
        .alert("ALERTA!", isPresented: $showingAlert) {
            Button("Vamos lá!", role: .cancel) { }
        } message: {
            Text("Você irá iniciar o desafio da aula agora!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
