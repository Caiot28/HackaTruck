//
//  ContentView.swift
//  projetoFinal
//
//  Created by Turma01-9 on 13/05/25.
//

import SwiftUI
struct ToggleStates {
    var oneIsOn: Bool = false
    var twoIsOn: Bool = true
}
struct pg2: View {
    
    var recebe: Paciente
    @State private var toggleStates = ToggleStates()
    @State private var topExpanded: Bool = true
    @StateObject var viewModel = ViewModel()
    @State var idAux: String = ""
    @State var horario: String = ""
    @State var periodo: String = ""
    @State var intervalo: String = ""
    @State private var presentAlert = false
    @State private var mostrarRemedios = false
    @State private var mostrarAlerta = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
            VStack{
                ForEach(viewModel.medicamentos_paci, id:\.self){ i in
                    if idAux == i.idpaciente {
                        Text(i.nome)
                        Text(i.funcao)
                        Text(i.periodo)
                        Text(i.intervalo)
                    
                        Text("\(i.horario ?? "")")
                        
                        Button("Adicionar Horario"){
                            presentAlert = true
                        }
                        .alert("Login", isPresented: $presentAlert, actions: {
                            TextField("Horario", text: $horario)
                            
                            Button("Adicionar Horario"){
                                viewModel.enviarHorario(obj: MedicamentosPaciente(_id: i._id, _rev:   i._rev, nome: i.nome, funcao: i.funcao, periodo: i.periodo, horario: horario, intervalo: i.intervalo, idpaciente: i.idpaciente))
                            }
                            Button("Cancelar", role: .cancel, action: {})
                        }, message: {
                            Text("Digite o horario")
                        })
                    }
                }
            }
            
            VStack{
                
                NavigationLink(destination: ContentView()){
                    Text("Monitoramento do paciente")
                }
                
                
                DisclosureGroup("Adicionar remedio") {
                            
                    ForEach(viewModel.medicamentos, id: \.self){ m in
                        DisclosureGroup(m.nome) {
                            TextField("Periodo:", text: $periodo)
                            TextField("Intervalo:", text: $intervalo)
                            
                            Button("Enviar", action: {
                                viewModel.enviarHorario(obj: MedicamentosPaciente(_id: nil, _rev: nil, nome: m.nome, funcao: m.funcao, periodo: periodo, horario: "", intervalo: intervalo, idpaciente: recebe._id))
                            })
                        }
                    }
                }
                
                
                ForEach(viewModel.paciente, id: \.self) { p in
                    
                    ForEach(p.ficha_medica, id: \.self){ f in
                        if idAux == f.idpaciente {
                            NavigationLink(destination: fichaMedica(recebe: f)){
                                Text("Ficha Medica")
                            }
                            NavigationLink(destination: recomendacoes(recebe: f)){
                                Text("Recomendações")
                            }
                        }
                    }
                    }
                }
            }
        }
        .onAppear(){
                viewModel.fetch()
                idAux = recebe._id
                
                print(idAux)
            }
        }
        
    }

#Preview {
    pg2(recebe: Paciente(_id: "sad", nome: "Joao", data_nascimento: "fsf", sexo: "wqeq", peso: 121.2, altura: 321.2, tipo_sanguineo: "A", foto: "yrwd", ficha_medica: [FichasMedicas(arquivos: "pf", laudos: "pi", consultas: "poy", exames: "dsfns", orientacoes:  "bfebofu", idpaciente: "123")]))
}
