//
//  recomendacoes.swift
//  projetoFinal
//
//  Created by Turma01-9 on 15/05/25.
//

import SwiftUI

struct recomendacoes: View {
    var recebe: FichasMedicas
    var body: some View {
        Text(recebe.consultas)
        Text(recebe.exames)
        Text(recebe.orientacoes)
    }
}

#Preview {
    recomendacoes(recebe: FichasMedicas(arquivos: "pf", laudos: "pi", consultas: "poy", exames: "dsfns", orientacoes:  "bfebofu", idpaciente: "123"))
}
