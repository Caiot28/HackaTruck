//
//  ContentView.swift
//  Desafio10_API
//
//  Created by Turma01-9 on 29/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.verde, .black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        AsyncImage(url: URL(string: "https://1000logos.net/wp-content/uploads/2023/05/Slytherin-Logo.png")) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .scaledToFit()
                                .frame(width: 500)
                            
                            
                        } placeholder: {
                            Image(systemName: "questionmark.app")
                                .resizable()
                                .scaledToFill()
                                .scaledToFit()
                                .frame(width: 100, height: 200)
                                .foregroundColor(.black)
                        }
                        
                        VStack(alignment: .leading){
                            ForEach(viewModel.personagens){ index in
                                NavigationLink(destination: personagemView(recebe: index)){
                                    
                                    AsyncImage(url: URL(string: index.image!)) {image in image
                                            .resizable()
                                            .scaledToFill()
                                            .scaledToFit()
                                            .frame(width: 70)
                                            .cornerRadius(5)
                                            .padding()
                                        
                                    } placeholder: {
                                        Image(systemName: "person.crop.circle")
                                            .resizable()
                                            .scaledToFill()
                                            .scaledToFit()
                                            .frame(width: 80)
                                            .foregroundColor(.black)
                                            
                                    }
                                    Text(index.name!)
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                }
                            }
                        }
                        
                        Spacer()
                    }
                    
                    
                    
                }
            }
            
        }
        .tint(.black)
        .onAppear(){
            viewModel.fetch()
                
        }
        
    }
        
}

#Preview {
    ContentView()
}
