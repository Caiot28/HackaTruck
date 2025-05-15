//
//  fichaMedica.swift
//  projetoFinal
//
//  Created by Turma01-9 on 15/05/25.
//

import SwiftUI

struct fichaMedica: View {
    var recebe: FichasMedicas
    var body: some View {
        Text(recebe.arquivos)
        Text(recebe.laudos)
    }
}

#Preview {
    fichaMedica(recebe: FichasMedicas(arquivos: "pf", laudos: "pi", consultas: "poy", exames: "dsfns", orientacoes:  "bfebofu", idpaciente: "123"))
}
