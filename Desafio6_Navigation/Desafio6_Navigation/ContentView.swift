//
//  ContentView.swift
//  Desafio6_Navigation
//
//  Created by Turma01-9 on 23/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingCredits = false
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                VStack{
                    Color.azulEscuro
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 600)
                        .offset(y: -210)
                    
                
                    VStack(spacing: 70){
                        NavigationLink(destination: Modo1()) {
                            Text("Modo 1")
                        }
                        .foregroundColor(.white)
                        .background(Rectangle()
                            .frame(width: 250, height: 80)
                            .cornerRadius(10)
                            .foregroundStyle(.rosa))
                        .offset(y: -350)
                        
                        
                        NavigationLink(destination: Modo2()) {
                            Text("Modo 2")
                        }
                        .foregroundColor(.white)
                        .background(Rectangle()
                            .frame(width: 250, height: 80)
                            .cornerRadius(10)
                            .foregroundStyle(.rosa))
                        .offset(y: -350)
                        
                        Button("Modo 3") {
                                    showingCredits.toggle()
                                }
                        .foregroundColor(.white)
                        .background(Rectangle()
                            .frame(width: 250, height: 80)
                            .cornerRadius(10)
                            .foregroundStyle(.rosa))
                        .offset(y: -350)
                        
                                .sheet(isPresented: $showingCredits) {
                                    Modo3()
                                }
                    }
                }
                
                .background(Color.azulEscuro)
                
            }
            
        }
        .background(Color.azulEscuro)
        
    }
}

#Preview {
    ContentView()
}
