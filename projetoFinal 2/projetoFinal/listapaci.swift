//
//  listapaci.swift
//  projetoFinal
//
//  Created by Turma01-9 on 14/05/25.
//

import SwiftUI

struct listapaci: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                ForEach(viewModel.paciente, id: \.self){ i in
                    NavigationLink(destination: pg2(recebe: i)){
                        Text(i.nome)
                    }
                }
            }
        }
        .onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    listapaci() }
