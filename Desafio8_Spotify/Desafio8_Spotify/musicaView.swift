//
//  musicaView.swift
//  Desafio8_Spotify
//
//  Created by Turma01-9 on 25/04/25.
//

import SwiftUI

struct musicaView: View {
    var recebe : Song
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                AsyncImage(url: URL(string: recebe.capa)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .scaledToFit()
                        .frame(width: 200, height: 400)
                    
                } placeholder: {
                    Image(systemName: "questionmark.app")
                        .resizable()
                        .scaledToFill()
                        .scaledToFit()
                        .frame(width: 200, height: 400)
                        .foregroundColor(.white)
                }
                    .frame(height: 200)
                
                Text(recebe.name)
                    .foregroundColor(.white)
                    .font(.system(size: 37))
                Text(recebe.artist)
                    .foregroundColor(.gray)
                    .font(.system(size: 25))
                
                Spacer()
                    .frame(height: 150)
                
                HStack(spacing: 25){
                    Image(systemName: "shuffle")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    
                    Image(systemName: "backward.end.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 70))
                    
                    Image(systemName: "forward.end.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    
                    Image(systemName: "repeat")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                }
                .frame(height: 1)
                .padding(70)
                Spacer()
                    .frame(height: 100)
            }
        }
    }
}

#Preview {
    musicaView(recebe: Song(id: 0, name: "Teste", artist: "artista", capa: "url"))
}
