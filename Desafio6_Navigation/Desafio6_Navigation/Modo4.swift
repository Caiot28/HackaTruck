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
                VStack{
                    Text("Modo 2")
                        .foregroundColor(.white)
                        .font(.title)
                }
                Spacer()
                VStack(spacing: 20){
                    
                    Text("Volte, \(nome)")
                        .foregroundColor(.white)
                    
                }
                .padding(40)
                .background(Rectangle()
                    .cornerRadius(10)
                    .foregroundStyle(.rosa))
                .shadow(radius: 10)
    
                Spacer()
            }
        }
    }
}

#Preview {
    Modo4(nome: .constant("Teste"))
}
