//
//  ContentView.swift
//  Desafio4_Inputs
//
//  Created by Turma01-9 on 22/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var dist : Double = 0.0
    @State private var tempo : Double = 0.0
    @State private var vel : Double = 0.0
    @State private var corFundo : Color = .gray
    @State private var imagem : String = "questionMark"
    
    var body: some View {
        
        VStack {
            VStack(spacing: 20){
                
                Text("Digite a distância (km)")
                
                TextField("", value: $dist, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .frame(width: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                
                Text("Digite o tempo (h)")
                
                TextField("", value: $tempo, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .frame(width: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .cornerRadius(10)
                
                
                
                }
            
            Button(action: {
                vel = dist / tempo
                
                switch vel {
                case 0...9.99:
                    imagem = "tartaruga"
                    corFundo = .verdeClaro
                case 10...29.99:
                    imagem = "elefante"
                    corFundo = .azulClaro
                case 30...69.99:
                    imagem = "avestruz"
                    corFundo = .laranjaClaro
                case 70...89.99:
                    imagem = "leao"
                    corFundo = .amareloClaro
                case 90...130:
                    imagem = "guepardo"
                    corFundo = .vermelhoClaro
                default:
                    imagem = "questionMark"
                    corFundo = .gray
                }
            }, label: {
                Text("Calcular")
            })
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .foregroundColor(.orange)
                
                Text("\(vel, specifier: "%.2f") km/h")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 50))
        
                Spacer()
                
                Image("\(imagem)")
                    .resizable()
                    .clipShape(Rectangle())
                    .cornerRadius(30)
                    .scaledToFill()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                
            Spacer()
                HStack(){
                    VStack(spacing: 8){
                        Text("TARTARUGA")
                        Text("ELEFANTE")
                        Text("AVESTRUZ")
                        Text("LEÃO")
                        Text("GUEPARDO")
                    }
                    .padding()
                    VStack(spacing: 8){
                        Text("(0 - 9.99 km/h)")
                        Text("(10 - 29.99 km/h)")
                        Text("(30 - 69.99 km/h)")
                        Text("(70 - 89.99 km/h)")
                        Text("(90 - 130 km/h)")
                    }
                    .padding()
                    VStack{
                        Circle().fill(.verdeClaro)
                            .frame(width: 20)
                        Circle().fill(.azulClaro)
                            .frame(width: 20)
                        Circle().fill(.laranjaClaro)
                            .frame(width: 20)
                        Circle().fill(.amareloClaro)
                            .frame(width: 20)
                        Circle().fill(.vermelhoClaro)
                            .frame(width: 20)
                    }
                    .padding(10)
                }
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                
        
        
        }
        .padding()
        .background(corFundo)
    }
        
}



#Preview {
    ContentView()
}
