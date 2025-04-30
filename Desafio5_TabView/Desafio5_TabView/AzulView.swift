//
//  AzulView.swift
//  Desafio5_TabView
//
//  Created by Turma01-9 on 23/04/25.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.top)
            
            VStack{
                Image(systemName: "paintbrush.pointed")
                    .font(.system(size: 160))
                    .foregroundColor(.blue)
                    .background(Circle()
                        .fill(Color.black)
                        .padding(-30))
            }
        }
    }
    
}

#Preview {
    AzulView()
}
