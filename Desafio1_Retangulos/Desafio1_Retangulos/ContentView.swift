//
//  ContentView.swift
//  Aula01
//
//  Created by Turma01-9 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .size(CGSize(width: 100.0, height: 100.0))
                    .foregroundColor(.red)
                Spacer()
                    .frame(width: 150)
                Rectangle()
                    .size(/*@START_MENU_TOKEN@*/CGSize(width: 100.0, height: 100.0)/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            Spacer()
                .frame(height: 500)
            HStack{
                Rectangle()
                    .size(/*@START_MENU_TOKEN@*/CGSize(width: 100.0, height: 100.0)/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.green)
                Spacer()
                    .frame(width: 150)
                Rectangle()
                    .size(/*@START_MENU_TOKEN@*/CGSize(width: 100.0, height: 100.0)/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
