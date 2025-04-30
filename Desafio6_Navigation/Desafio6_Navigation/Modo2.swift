//
//  Modo2.swift
//  Desafio6_Navigation
//
//  Created by Turma01-9 on 23/04/25.
//

import SwiftUI

struct Modo2: View {
    @State var nome : String = ""
    var body: some View {
        ZStack{
            Color.azulEscuro
                .ignoresSafeArea()
            
            VStack{
                VStack{
                    Text("Modo 2")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                VStack(spacing: 20){
                    
                    TextField(
                        "Nome: ",
                        text: $nome
                    )
                    .font(.title)
                    .padding()
                    .multilineTextAlignment(.center)
                    
                    Text("Bem vindo, \(nome)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .padding()
                    
                    NavigationLink(destination: Modo4(nome: $nome)) {
                        Text("Acessar tela")
                            .foregroundColor(.white)
                    }
                    .padding(20)
                    .background(Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .shadow(radius: 10))
                }
                
                .background(Rectangle()
                    .cornerRadius(10)
                    .foregroundStyle(.rosa)
                    .shadow(radius: 10)
                    .frame(height: 300))
                .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    Modo2()
}
