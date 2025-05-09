//
//  ViewModel.swift
//  Desafio12_Umidade
//
//  Created by Turma01-9 on 09/05/25.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var umidade: [Umidade] = []
    
    func fetch(){
        
        guard let url = URL(string: "http://127.0.0.1:1880/GetUmidade") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                
                let parsed = try JSONDecoder().decode([Umidade].self, from: data)
                
                DispatchQueue.main.async {
                    self?.umidade = parsed.sorted {$0.data > $1.data}
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
