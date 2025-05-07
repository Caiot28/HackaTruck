//
//  ContentView.swift
//  Desafio10_MinhaAPI
//
//  Created by Turma01-9 on 07/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
                VStack(){
                    ForEach(viewModel.estacionamento, id: \.self){ index in
                        Text(index.nomeEstacionamento!)
                            .font(.title)
                            .foregroundColor(.black)
                            .bold()
                            .padding()
                        
                        Text("Quantidade de vagas: \(index.quantidadeVagas!)")
                            .bold()
                            .padding()
                        
                        HStack{
                            ScrollView{
                                VStack(){
                                    ForEach(index.carros, id: \.self){ carro in
                                        NavigationLink(destination: carroView(recebe: carro)){
                                            
                                            AsyncImage(url: URL(string: carro.foto!)) {image in image
                                                    .resizable()
                                                    .scaledToFill()
                                                    .scaledToFit()
                                                    .frame(width: 120)
                                                
                                            } placeholder: {
                                                Image(systemName: "questionmark")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .scaledToFit()
                                                    .frame(width: 80)
                                            }
                                            Text(carro.modelo!)
                                                .font(.system(size: 40))
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                            }
                            Spacer()
                        }
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
