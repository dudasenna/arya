//
//  FavoritedCuriositiesView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 26/11/20.
//

import SwiftUI

struct FavoritedCuriositiesView: View {
    let data = Array(1...15).map {"Item\($0)"}
    let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ZStack {
            VStack {
                Ellipse()
                    .foregroundColor(.purple)
                    .shadow(color: .purple, radius: 10)
                    .frame(width: 250, height: 250)
                    .padding(.top, -620)
                    .padding(.leading, 350)
                Ellipse()
                    .foregroundColor(.purple)
                    .shadow(color: .purple, radius: 10)
                    .frame(width: 50, height: 50)
                    .padding(.top, -345)
                    .padding(.leading, 400)
            }
            //
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.purple)
                .opacity(0.5)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 260)
            ScrollView(.vertical) {
                LazyVGrid(columns: gridLayout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color.white)
                                .frame(width: 100, height: 100)
                            Text(item)
                        }
                    }
                }
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 200)
            .padding(.top, 180)
            .padding(.bottom, 50)
        }.edgesIgnoringSafeArea(.all)
        .navigationBarTitle("Curiosidades", displayMode: .large)
    }
}

struct FavoritedCuriositiesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritedCuriositiesView()
    }
}
