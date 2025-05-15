//
//  pacienteView.swift
//  projetoFinal
//
//  Created by Turma01-9 on 14/05/25.
//

import SwiftUI

struct pacienteView: View {
    var recebe: Paciente
    var body: some View {
        Text(recebe.nome)
     
        
            
        
    }
}

#Preview {
    pacienteView(recebe: Paciente(_id: "sad", nome: "Joao", data_nascimento: "fsf", sexo: "wqeq", peso: 121.2, altura: 321.2, tipo_sanguineo: "A", foto: "yrwd", ficha_medica: [FichasMedicas(arquivos: "pf", laudos: "pi", consultas: Consultas(recomendacao_consulta: "poy"), exames: Exames(recomendacao_exame: "dsfns"), orientacoes: Orientacoes(recomendacao_orientacoes: "bfebofu"))]))
}
