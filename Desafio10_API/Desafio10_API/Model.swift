//
//  Model.swift
//  Desafio10_API
//
//  Created by Turma01-9 on 29/04/25.
//

import Foundation

struct HaPo: Decodable, Identifiable {
    let id: String
    let name: String?
    let species: String?
    let gender: String?
    let house: String?
    let alive: Bool?
    let image: String?
}
