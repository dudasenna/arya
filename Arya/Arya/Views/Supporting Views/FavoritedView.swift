//
//  FavoritedView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct FavoritedView: View {
    let data = Array(1...15).map {"Favorited\($0)"}
    let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
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
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                .padding(.top, 260)
            ScrollView(.vertical) {
                LazyVGrid(columns: gridLayout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color.white)
                                .frame(
                                    width: (UIScreen.main.bounds.width/2.4),
                                    height: (UIScreen.main.bounds.height/4.4)
                                )
                        }
                    }
                }
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 200)
            .padding(.top, 180)
            .padding(.bottom, 50)
    }
}

struct FavoritedAreasView: View {
    var body: some View {
        ZStack {
        FavoritedView()
        }.edgesIgnoringSafeArea(.all)
        .navigationBarTitle("Áreas de Atuação", displayMode: .large)
    }
}

struct FavoritedCuriositiesView: View {
    var body: some View {
        ZStack {
        FavoritedView()
        }.edgesIgnoringSafeArea(.all)
        .navigationBarTitle("Curiosidades", displayMode: .large)
    }
}

struct FavoritedCommunitiesView: View {
    var body: some View {
        ZStack {
        FavoritedView()
        }.edgesIgnoringSafeArea(.all)
        .navigationBarTitle("Comunidades", displayMode: .large)
    }
}

struct FavoritedWomenView: View {
    var body: some View {
        ZStack {
        FavoritedView()
        }.edgesIgnoringSafeArea(.all)
        .navigationBarTitle("Mulheres", displayMode: .large)
    }
}

struct FavoritedView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritedAreasView()
    }
}
