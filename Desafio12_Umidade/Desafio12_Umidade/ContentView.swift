//
//  ContentView.swift
//  Desafio12_Umidade
//
//  Created by Turma01-9 on 09/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                VStack{
                    
                    Text("Medidor de umidade")
                        .font(.system(size: 35))
                        .bold()
                        .padding()
                    
                    Spacer()
                    
                    Image(systemName: "drop.circle")
                        .font(.system(size: 250))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                        .frame(height: 100)
                    
                    if(viewModel.umidade.count > 0){
                        Text(viewModel.umidade.first!.umidade)
                            .font(.system(size: 45))
                            .bold()
                    }
                    Spacer()
                    
                }
            }
            
        }
        
        .onAppear(){
            let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                
                viewModel.fetch()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
