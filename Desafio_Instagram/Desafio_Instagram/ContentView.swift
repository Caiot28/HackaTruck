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
                        }
                        .padding(10)
                        VStack{
                            Text("0")
                            Text("Seguidores")
                                .font(.caption)
                        }
                        .padding(10)
                        VStack{
                            Text("0")
                            Text("Seguindo")
                                .font(.caption)

                        }
                        .padding(10)
                    }
                    Text("Editar Perfil")
                        .padding(15)
                        .background(
                            Color.gray,
                            in: Rectangle()
                            
                        )
                        
                        
                    
                }
                
            }
            .border(Color.gray, width: 3)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
