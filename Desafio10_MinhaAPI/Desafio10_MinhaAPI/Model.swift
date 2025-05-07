//
//  Model.swift
//  Desafio10_MinhaAPI
//
//  Created by Turma01-9 on 07/05/25.
//

import Foundation

struct Estacionamento: Decodable, Hashable{
    let nomeEstacionamento: String?
    let quantidadeVagas: Int?
    let carros: [Carro]
}

struct Carro: Decodable, Hashable{
    let modelo: String?
    let ano: Int?
    let cor: String?
    let preco: Double?
    let foto: String?
}
