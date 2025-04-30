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
                Color.azulEscuro
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .scaledToFill()
                            .frame(maxWidth: 300, maxHeight: 80)
                        Spacer()
                    }
                    
                    VStack(spacing: 70){
                        NavigationLink(destination: Modo1()) {
                            Text("Modo 1")
                        }
                        .foregroundColor(.white)
                        .background(Rectangle()
                            .frame(width: 250, height: 80)
                            .cornerRadius(10)
                            .foregroundStyle(.rosa)
                            .shadow(radius: 10))
                        
                        NavigationLink(destination: Modo2()) {
                            Text("Modo 2")
                        }
                        .foregroundColor(.white)
                        .background(Rectangle()
                            .frame(width: 250, height: 80)
                            .cornerRadius(10)
                            .foregroundStyle(.rosa)
                            .shadow(radius: 10))
                      
                        Button("Modo 3") {
                            showingCredits.toggle()
                        }
                        .foregroundColor(.white)
                        .background(Rectangle()
                            .frame(width: 250, height: 80)
                            .cornerRadius(10)
                            .foregroundStyle(.rosa)
                            .shadow(radius: 10))
                        .sheet(isPresented: $showingCredits) {
                            Modo3()
                            
                        }
                        Spacer()
                            .frame(height: 200)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
