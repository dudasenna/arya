//
//  ProfileView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 25/11/20.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack {
                    ProfileHeaderView()
                    MyJourneysView()
                        .frame(width: UIScreen.main.bounds.width)
                    FavoritesView()
                        .frame(width: UIScreen.main.bounds.width, height: 400)
                }
            }
            .frame(width: UIScreen.main.bounds.width - 50)
            .offset(y: 40)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
