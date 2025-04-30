//
//  Modo3.swift
//  Desafio6_Navigation
//
//  Created by Turma01-9 on 23/04/25.
//

import SwiftUI

struct Modo3: View {
    var body: some View {
        ZStack{
            Color.azulEscuro
                .ignoresSafeArea()
            
            VStack{
                VStack{
                    Text("Sheet View")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                VStack(spacing: 20){
                    
                    Text("Nome: Caio")
                        .foregroundColor(.white)
                    Text("Sobrenome: Teles")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Rectangle()
                    .cornerRadius(10)
                    .foregroundStyle(.rosa)
                    .shadow(radius: 10))
                
                Spacer()
            }
        }
    }
}

#Preview {
    Modo3()
}
