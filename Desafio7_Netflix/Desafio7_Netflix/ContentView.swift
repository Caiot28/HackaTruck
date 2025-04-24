//
//  ContentView.swift
//  Desafio7_Netflix
//
//  Created by Turma01-9 on 24/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            InicioView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            InicioView()
                .tabItem {
                    Label("Novidades", systemImage: "play.square.stack")
                }
            InicioView()
                .tabItem {
                    Label("Minha Netflix", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
