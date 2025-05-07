//
//  carroView.swift
//  Desafio10_MinhaAPI
//
//  Created by Turma01-9 on 07/05/25.
//

import SwiftUI

struct carroView: View {
    var recebe: Carro
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                AsyncImage(url: URL(string: recebe.foto!)){ image in image
                        .resizable()
                        .scaledToFill()
                        .scaledToFit()
                        .frame(width: 350)
                        .cornerRadius(10)
                } placeholder: {
                    Image(systemName: "questionmark.app")
                        .resizable()
                        .scaledToFill()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.black)
                }
                .padding()
                
                VStack(spacing: 5){
                    Text(recebe.modelo!)
                    Text("\(recebe.ano!)")
                    Text(recebe.cor!)
                    Text("\(recebe.preco!, specifier: "%.2f")")
                }
                .bold()
                .padding()
                .font(.system(size: 30))
            }
        }
    }
}

#Preview {
    carroView(recebe: Carro(modelo: "Uno", ano: 2000, cor: "Preto", preco: 19299.99, foto: "url"))
}
