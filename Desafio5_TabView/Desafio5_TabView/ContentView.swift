//
//  ContentView.swift
//  Desafio5_TabView
//
//  Created by Turma01-9 on 23/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            RosaView()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush")
                }
            AzulView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed")
                }
            CinzaView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette")
                }
            ListaView()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
