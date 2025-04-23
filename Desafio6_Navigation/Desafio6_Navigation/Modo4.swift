//
//  Modo4.swift
//  Desafio6_Navigation
//
//  Created by Turma01-9 on 23/04/25.
//

import SwiftUI

struct Modo4: View {
    @Binding var nome: String
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
        
                Text("Volte, \(nome)")
                    .foregroundColor(.white)
                
            }
                
                .background(Rectangle()
                    .frame(width: 150, height: 100)
                    .cornerRadius(10)
                    .foregroundStyle(.rosa))
            }
    }
}

#Preview {
    Modo4(nome: $nome)
}
