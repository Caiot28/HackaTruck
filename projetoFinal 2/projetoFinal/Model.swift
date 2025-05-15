//
//  Model.swift
//  projetoFinal
//
//  Created by Turma01-9 on 13/05/25.
//

import Foundation

struct Paciente: Decodable, Hashable{
    let _id: String
    let nome: String
    let data_nascimento: String
    let sexo: String
    let peso: Double
    let altura: Double
    let tipo_sanguineo: String
    let foto: String
    let ficha_medica: [FichasMedicas]
}

struct Medicamentos: Decodable, Hashable{
    let nome: String
    let funcao: String
}

struct MedicamentosPaciente: Codable, Hashable{
    let _id: String?
    let _rev: String?
    let nome: String
    let funcao: String
    let periodo: String
    let horario: String?
    let intervalo: String
    let idpaciente: String
}

struct FichasMedicas: Decodable, Hashable{
    let arquivos: String
    let laudos: String
    let consultas: String
    let exames: String
    let orientacoes: String
    let idpaciente: String
}
