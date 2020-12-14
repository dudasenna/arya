//
//  ProfileView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                ProfileHeaderView()
                    .padding(.top)
                    .padding(.bottom, 30)
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                        .foregroundColor(.white)
                ScrollView(.vertical) {
                        VStack {
                            MyJourneysView()
                                .frame(width: UIScreen.main.bounds.width)
                            FavoritesView()
                                .frame(width: UIScreen.main.bounds.width, height: 350)
                        }.padding(.top, 30)
                        .padding(.bottom)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50)
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Color.purple)
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        }
        .navigationBarColor(backgroundColor: .white, tintColor: .orange)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
