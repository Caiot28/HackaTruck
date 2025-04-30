//
//  ContentView.swift
//  Desafio8_Spotify
//
//  Created by Turma01-9 on 25/04/25.
//

import SwiftUI

struct Song : Identifiable {
    var id : Int
    var name : String
    var artist : String
    var capa : String
}

struct ContentView: View {
    var body: some View {
        let arrayMusicas = [
        Song(id: 1, name: "Here Comes The Sun", artist: "The Beatles", capa: "https://upload.wikimedia.org/wikipedia/pt/3/3d/Abbey_Road.jpg"),
        Song(id: 2, name: "Hey Jude", artist: "The Beatles", capa: "https://i.scdn.co/image/ab67616d0000b273582d56ce20fe0146ffa0e5cf"),
        Song(id: 3, name: "Thunderstruck", artist: "AC/DC", capa: "https://i.scdn.co/image/ab67616d0000b2738399047ff71200928f5b6508"),
        Song(id: 4, name: "Hells Bells", artist: "AC/DC", capa: "https://i.scdn.co/image/ab67616d0000b2730b51f8d91f3a21e8426361ae"),
        Song(id: 5, name: "Eye of the Beholder", artist: "Metallica", capa: "https://i.scdn.co/image/ab67616d0000b27341eaec65ddc6e4c777cbc04e"),
        Song(id: 6, name: "For Whom The Bell Tolls", artist: "Metallica", capa: "https://i.scdn.co/image/ab67616d0000b273533fd0b248052d04e6b732c0"),
        Song(id: 7, name: "BURN IT DOWN", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d0000b273987fb4c5ec8790e9f637a4a4"),
        Song(id: 8, name: "Unsainted", artist: "Slipknot", capa: "https://i.scdn.co/image/ab67616d0000b27326f20b4d67c0c7b0f137ce4f")]
        NavigationStack{
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        VStack{
                            Image("Capa")
                                .resizable()
                                .scaledToFit()
                                .scaledToFill()
                                .frame(width: 200, height: 200)
                        }
                        HStack{
                            VStack(){
                                
                                Text("HackaFM")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                    .padding()
                                
                                HStack(){
                                    Image("Capa")
                                        .resizable()
                                        .scaledToFit()
                                        .scaledToFill()
                                        .frame(width: 40, height: 20)
                                    
                                    Text("HackaSong")
                                        .font(.system(size: 15))
                                        .foregroundColor(.white)
                                }
                            }
                            Spacer()
                        }
                        Spacer()
                         
                        VStack(alignment: .leading){
                            ForEach(arrayMusicas){ index in
                                NavigationLink(destination: musicaView(recebe: index)){
                                    
                                    AsyncImage(url: URL(string: index.capa)) { image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .scaledToFit()
                                            .frame(width: 60)
                                        
                                    } placeholder: {
                                        Image(systemName: "questionmark.app")
                                            .resizable()
                                            .scaledToFill()
                                            .scaledToFit()
                                            .frame(width: 60)
                                            .foregroundColor(.white)
                                    }
                                    HStack{
                                        VStack(alignment: .leading){
                                            Text(index.name)
                                                .foregroundColor(.white)
                                            
                                            Text(index.artist)
                                                .foregroundColor(.gray)
                                            
                                        }
                                        
                                        Spacer()
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                        
                                    }
                                    
                                    
                                }
                                .padding(5)
                            }
                        }
                        
                        VStack(alignment: .leading){
                            Text("Sugeridos")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .frame(width: 350, height: 80, alignment: .leading)
                        }
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(arrayMusicas){ index in
                                    VStack{
                                        AsyncImage(url: URL(string: index.capa)) { image in
                                            image
                                                .resizable()
                                                .scaledToFill()
                                                .scaledToFit()
                                                .frame(width: 200)
                                            
                                        } placeholder: {
                                            Image(systemName: "questionmark.app")
                                                .resizable()
                                                .scaledToFill()
                                                .scaledToFit()
                                                .frame(width: 200)
                                                .foregroundColor(.white)
                                        }
                                        Text("\(index.id) - \(index.artist)")
                                            .foregroundColor(.white)
                                            .font(.system(size: 20))
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
