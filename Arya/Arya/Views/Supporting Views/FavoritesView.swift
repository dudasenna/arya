//
//  FavoritesView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct FavoritesView: View {
    let categoriesTitle: [String] = ["Comunidades", "Mulheres", "Áreas \n de atuação", "Curiosidades"]
    var body: some View {
            VStack(spacing: 20) {
                HStack {
                    Label(
                        title: { Text("Favoritos")
                            .font(.title3)
                            .fontWeight(.heavy)
                        },
                        icon: {}
                    )
                    .foregroundColor(.orange)
                    Spacer()
                }
                HStack(spacing: 20) {
                    // MARK: Communities
                    NavigationLink(
                        destination: FavoritedCommunitiesView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 45, style: .continuous)
                                .fill(Color.purple)
                                .shadow(color: .purple, radius: 1)
                            Text("\(categoriesTitle[0])")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                    }
                    // MARK: Women
                    NavigationLink(
                        destination: FavoritedWomenView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 45, style: .continuous)
                                .fill(Color.purple)
                                .shadow(color: .purple, radius: 1)
                            Text("\(categoriesTitle[1])")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                    }
                }
                HStack(spacing: 20) {
                    // MARK: Areas of expertise
                    NavigationLink(
                        destination: FavoritedAreasView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 45, style: .continuous)
                                .fill(Color.purple)
                                .shadow(color: .purple, radius: 1)
                            Text("\(categoriesTitle[2])")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)

                        }
                    }
                    // MARK: Curiosities
                    NavigationLink(
                        destination: FavoritedCuriositiesView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 45, style: .continuous)
                                .fill(Color.purple)
                                .shadow(color: .purple, radius: 1)
                            Text("\(categoriesTitle[3])")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                    }
                }
            }.padding(.all, 20)
        }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
