//
//  SerieView.swift
//  Desafio7_Netflix
//
//  Created by Turma01-9 on 24/04/25.
//

import SwiftUI

struct SerieView: View {
    @State var nome : String
    @State var serie : String
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()

            VStack{
                VStack(alignment: .leading){
                    Image("Episodio")
                        .resizable()
                        .scaledToFill()
                        .scaledToFit()
                        .padding(-5)
                    
                    Text("\(serie)")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                    .frame(height: 20)
                
                HStack(spacing: 40){
                    Text("2021")
                        .foregroundColor(.white)
                    Text("14")
                        .background(Rectangle()
                            .foregroundColor(.orange)
                            .frame(width: 40, height: 40)
                            .cornerRadius(3))
                    Text("2 temporadas")
                        .foregroundColor(.white)
                    Spacer()
                }
                Spacer()
                    .frame(height: 30)
                VStack{
                    Button(action: {}){
                        Text("Assistir")
                            .foregroundColor(.black)
                            .bold()
                            .background(Rectangle()
                                .frame(width: 370, height: 50)
                                .foregroundStyle(Color.white)
                                .cornerRadius(2)
                                .shadow(radius: 50))
                    }
                    Spacer()
                        .frame(height: 40)
                    
                    Button(action: {}){
                        Text("Baixar")
                            .foregroundColor(.black)
                            .bold()
                            .background(Rectangle()
                                .frame(width: 370, height: 50)
                                .foregroundStyle(Color.gray)
                                .cornerRadius(2)
                                .shadow(radius: 50))
                    }
                    Spacer()
                        .frame(height: 30)
                }
                
                VStack(alignment: .leading){
                    Text("Em meio ao conflito entre as cidades-gêmeas de Piltover e Zaun, duas irmãs lutam em lados opostos de uma guerra entre tecnologias mágicas e convicções incompatíveis.")
                        .foregroundColor(.white)
                        .padding(-1)
                        .font(.system(size: 20))
                    
                    Text("Elenco: Hailee Steinfeld, Ella Purnell, Kevin Alejandro Criação: Christian Linke, Alex Yee")
                        .foregroundColor(.gray)
                        .padding(-2)
                        .font(.system(size: 20))
                }
                .padding(2)
                Spacer()
                    .frame(height: 20)
                
                HStack(spacing: 60){
                    VStack{
                        Image(systemName: "plus")
                            .foregroundColor(.gray)
                            .frame(width: 20, height: 20)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Minha lista")
                            .foregroundColor(.white)
                    }
                    VStack{
                        Image(systemName: "hand.thumbsup")
                            .foregroundColor(.gray)
                            .frame(width: 20, height: 20)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Avaliar")
                            .foregroundColor(.white)
                    }
                    VStack{
                        Image(systemName: "paperplane")
                            .foregroundColor(.gray)
                            .frame(width: 20, height: 20)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Minha lista")
                            .foregroundColor(.white)
                    }
                }
                
                Spacer()
            }
        }
            
    }
        
    
}
#Preview {
    SerieView(nome: "caio", serie: "Arcane")
}
