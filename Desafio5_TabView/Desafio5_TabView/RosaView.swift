//
//  RosaView.swift
//  Desafio5_TabView
//
//  Created by Turma01-9 on 23/04/25.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Color.rosa
                .edgesIgnoringSafeArea(.top)
            
            VStack{
                Image(systemName: "paintbrush")
                    .font(.system(size: 160))
                    .foregroundColor(.rosa)
                    .background(Circle()
                        .fill(Color.black)
                        .padding(-30))
            }
        }
    }
}

#Preview {
    RosaView()
}
