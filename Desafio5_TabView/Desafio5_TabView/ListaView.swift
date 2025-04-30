//
//  ListaView.swift
//  Desafio5_TabView
//
//  Created by Turma01-9 on 23/04/25.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        
        NavigationView{
            
            List{
                HStack{
                    Text("Rosa")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack{
                    Text("Azul")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack{
                    Text("Cinza")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
                
            }
            .navigationTitle("List")
        }
    }
}

#Preview {
    ListaView()
}
