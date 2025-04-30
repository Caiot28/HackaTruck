//
//  CinzaView.swift
//  Desafio5_TabView
//
//  Created by Turma01-9 on 23/04/25.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.top)
            VStack{
                Image(systemName: "paintpalette")
                    .font(.system(size: 160))
                    .foregroundColor(.gray)
                    .background(Circle()
                        .fill(Color.black)
                        .padding(-30))
                
            }
        }
    }
}

#Preview {
    CinzaView()
}
