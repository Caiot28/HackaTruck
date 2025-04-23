//
//  Modo2.swift
//  Desafio6_Navigation
//
//  Created by Turma01-9 on 23/04/25.
//

import SwiftUI

struct Modo2: View {
    @State var nome : String = "Caio"
    var body: some View {
        ZStack{
            Color.azulEscuro
                .ignoresSafeArea()
        
            VStack{
                Text("Modo 2")
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .offset(y: -320)
            }
                
            VStack(spacing: 20){
        
                TextField(
                    "Nome: ",
                    text: $nome
                )
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Bem vindo, \(nome)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                
                NavigationLink(destination: Modo4(nome: $nome)) {
                    Text("Acessar tela")
                }
            }
                
                .background(Rectangle()
                    .frame(width: 350, height: 250)
                    .cornerRadius(10)
                    .foregroundStyle(.rosa))
            }
    }
}

#Preview {
    Modo2()
}
