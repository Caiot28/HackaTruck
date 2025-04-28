//
//  ContentView.swift
//  Aula_PassagemData
//
//  Created by Turma01-9 on 25/04/25.
//

import SwiftUI
struct StructID : Hashable {
    var nome : String
    var sobrenome : String
}

struct ContentView: View {
    @State var ArrayID : [StructID] = [
    StructID(nome: "Caio", sobrenome: "Teles"),
    StructID(nome: "Gabriel", sobrenome: "Almeida")]
    
    var body: some View {
        NavigationStack{
            VStack {
                List(ArrayID, id: \.self){ index in
                    NavigationLink(destination: SwiftUIView(recebe: index)){
                        Image(systemName: "hand.point.up.left.fill")
                            .font(.system(size: 100))
                        Text("Teste")
                    }
                }
            }
            //.padding()
        }
    }
}

#Preview {
    ContentView()
}
