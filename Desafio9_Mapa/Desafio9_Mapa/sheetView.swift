//
//  sheetView.swift
//  Desafio9_Mapa
//
//  Created by Turma01-9 on 28/04/25.
//

import SwiftUI

struct sheetView: View {
    @Binding var recebe : Location
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: recebe.foto)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .scaledToFit()
                        .frame(maxWidth: 300, maxHeight: 300)
                        .padding()
                    
                } placeholder: {
                    Image(systemName: "questionmark.app")
                        .resizable()
                        .scaledToFill()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.black)
                }
                Text(recebe.nome)
                    .font(.system(size: 40))
                    .foregroundColor(.red)
                    .bold()
                
                VStack{
                    ScrollView{
                        Text(recebe.descricao)
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .padding()
                    }
                Spacer()
                }
            }
        }
    }
}

#Preview {
    sheetView(recebe: .constant(Location(nome: "TEste", foto: "url", descricao: "desc", latitude: 2, longitude: 2)))
}
