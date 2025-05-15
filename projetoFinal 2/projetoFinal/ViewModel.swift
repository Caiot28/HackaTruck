//
//  ViewModel.swift
//  projetoFinal
//
//  Created by Turma01-9 on 13/05/25.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var paciente: [Paciente] = []
    @Published var medicamentos: [Medicamentos] = []
    @Published var medicamentos_paci: [MedicamentosPaciente] = []
    
    func fetch(){
        
        guard let url = URL(string: "http://127.0.0.1:1880/lerpacientes") else {
            return
        }
        guard let url2 = URL(string: "http://127.0.0.1:1880/lermedicamento") else {
            return
        }
        guard let url3 = URL(string: "http://127.0.0.1:1880/lermedpaci") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                
                let parsed = try JSONDecoder().decode([Paciente].self, from: data)
                
                DispatchQueue.main.async {
                    self?.paciente = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
        
        let task2 = URLSession.shared.dataTask(with: url2){ [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                
                let parsed = try JSONDecoder().decode([Medicamentos].self, from: data)
                
                DispatchQueue.main.async {
                    self?.medicamentos = parsed
                }
            } catch {
                print(error)
            }
        }
        task2.resume()
        
        let task3 = URLSession.shared.dataTask(with: url3){ [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                
                let parsed = try JSONDecoder().decode([MedicamentosPaciente].self, from: data)
                
                DispatchQueue.main.async {
                    self?.medicamentos_paci = parsed
                }
            } catch {
                print(error)
            }
        }
        task3.resume()
    }
    
    func enviarHorario(obj: MedicamentosPaciente) {
        guard let url = URL(string: "http://127.0.0.1:1880/salvarmedpaci") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        request.httpBody = try? JSONEncoder().encode(obj)

        URLSession.shared.dataTask(with: request) { _, response, error in
            if let error = error {
                print("Erro: \(error.localizedDescription)")
            } else {
                print("Atualização enviada com sucesso")
            }
        }.resume()
    }
}
