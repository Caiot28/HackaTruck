//
//  ContentView.swift
//  Desafio_Instagram
//
//  Created by Turma01-9 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 6){
            HStack{
                Text("Username")
                    .padding()
                    .bold()
                Spacer()
                Image(systemName: "arrow.clockwise")
                Image(systemName: "list.dash")
                    .padding()
            }
            .border(Color.gray, width: 3)
            HStack{
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .padding()
                Spacer()
                VStack{
                    HStack(){
                        VStack{
                            Text("0")
                            Text("Posts")
                                .font(.caption)
                                .bold()
                        }
                        .padding(10)
                        VStack{
                            Text("0")
                            Text("Seguidores")
                                .font(.caption)
                                .bold()
                        }
                        .padding(10)
                        VStack{
                            Text("0")
                            Text("Seguindo")
                                .font(.caption)
                                .bold()

                        }
                        .padding(10)
                    }
                    Text("Editar Perfil")
                        .padding(15)
                        .bold()
                        .background(
                            Color.gray,
                            in: Rectangle()
                        )
                }
            }
            .border(Color.gray, width: 3)
            Spacer()
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    Text("Nome Sobrenome")
                        .bold()
                    Text("Bio")
                    
                
                }
                HStack{
                    
                }
                HStack{
                    VStack(spacing: 4){
                        Image(systemName: "square.grid.3x3.fill")
                            .padding()
                        Rectangle()
                            .size(CGSize(width: 120.0, height: 120.0))
                            .foregroundColor(.gray)
                        Rectangle()
                            .size(CGSize(width: 120.0, height: 120.0))
                            .foregroundColor(.gray)
                        Rectangle()
                            .size(CGSize(width: 120.0, height: 120.0))
                            .foregroundColor(.gray)
                        Spacer()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 48)
                    }
                    VStack(spacing: 6){
                        Image(systemName: "video")
                            .padding()
                        Rectangle()
                            .size(CGSize(width: 120.0, height: 120.0))
                            .foregroundColor(.gray)
                        Rectangle()
                            .size(CGSize(width: 120.0, height: 120.0))
                            .foregroundColor(.gray)
                        Rectangle()
                            .size(CGSize(width: 120.0, height: 120.0))
                            .foregroundColor(.gray)
                        Spacer()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 48)
                    }
                    
                    VStack(spacing:4){
                        Image(systemName: "photo.artframe")
                            .padding()
                        Rectangle()
                            .size(CGSize(width: 120.0, height: 120.0))
                            .foregroundColor(.gray)
                        Rectangle()
                            .size(CGSize(width: 120.0, height: 120.0))
                            .foregroundColor(.gray)
                        Rectangle()
                            .size(CGSize(width: 120.0, height: 120.0))
                            .foregroundColor(.gray)
                        Spacer()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 48)
                    }
                    
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
