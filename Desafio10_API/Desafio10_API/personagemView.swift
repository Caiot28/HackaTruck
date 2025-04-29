//
//  personagemView.swift
//  Desafio10_API
//
//  Created by Turma01-9 on 29/04/25.
//

import SwiftUI

struct personagemView: View {
    var recebe : HaPo
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.verdeClaro, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
                VStack{
                    AsyncImage(url: URL(string: recebe.image!)){ image in image
                            .resizable()
                            .scaledToFill()
                            .scaledToFit()
                            .frame(width: 200)
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
                    ScrollView{
                    HStack{
                        VStack(){
                            
                            Text("Name: \(recebe.name!)")
                            Text("Gender: \(recebe.gender!)")
                            Text("Species: \(recebe.species!)")
                            Text("House: \(recebe.house!)")
                            Text("Alive? \(recebe.alive!)")
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .bold()
                        .padding()
                        
                        
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    personagemView(recebe: HaPo(id: "123", name: "Harry", species: "Human", gender: "Male", house: "Grif", alive: true, image: "url"))
}
