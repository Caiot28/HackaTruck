//
//  InicioView.swift
//  Desafio7_Netflix
//
//  Created by Turma01-9 on 24/04/25.
//

import SwiftUI

struct InicioView: View {
    @State private var nome : String = "Caio"
    @State private var serie : String = "Arcane"
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Capa")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(width: 650, height: 250)
                    .blur(radius: 25)
                    .opacity(1)
                    .shadow(radius: 1)
                
                Image("Capa")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(width: 350, height: 250)
                
            
                VStack{
                    VStack(alignment: .leading){
                        
                        Text("Para \(nome)")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                        
                        HStack(spacing: 20){
                            Text("Séries")
                                .foregroundColor(.white)
                            Text("Filmes")
                                .foregroundColor(.white)
                            Text("Categorias")
                                .foregroundColor(.white)
                            Spacer()
                                .frame(width: 100)
                        }
                        Spacer()
                            .frame(height: 120)
                    }
                    .padding()
                    
                    Spacer()
                        .frame(height: 300)
                    
                    
                    HStack(spacing: 80){
                        
                        Spacer()
                            .frame(width: 100)
                        
                        NavigationLink(destination: SerieView(nome: nome, serie: serie)){
                            
                            Text("Assistir")
                                .foregroundColor(.black)
                                .bold()
                                .background(Rectangle()
                                    .frame(width: 150, height: 50)
                                    .foregroundStyle(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 50))
                        }
                        
                        Button(action: {}){
                            Text("+  Minha Lista")
                                .foregroundColor(.black)
                                .bold()
                                .background(Rectangle()
                                    .frame(width: 150, height: 50)
                                    .foregroundStyle(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 50))
                            
                        }
                        Spacer()
                    }
                    .padding(30)
                    
                    Text("Continuar assistindo como \(nome)")
                        .foregroundColor(.white)
                        .frame(width: 350, height: 100, alignment: .leading)
                        .bold()
                }
 
            }
            .padding()
        }
        }
    
    
}

#Preview {
    InicioView()
}

