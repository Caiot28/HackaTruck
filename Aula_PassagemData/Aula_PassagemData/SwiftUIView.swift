//
//  SwiftUIView.swift
//  Aula_PassagemData
//
//  Created by Turma01-9 on 25/04/25.
//

import SwiftUI

struct SwiftUIView: View {
    var recebe : StructID
    var body: some View {
        VStack{
            Text(recebe.nome)
            Text(recebe.sobrenome)
        }
    }
}

#Preview {
    SwiftUIView(recebe: StructID(nome: "teste", sobrenome: "teste2"))
}
