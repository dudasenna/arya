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
                    ScrollView(.vertical) {
                        VStack {
                            ProfileHeaderView()
                                .padding(.bottom, 40)
                            MyJourneysView()
                                .frame(width: UIScreen.main.bounds.width)
                            FavoritesView()
                                .frame(width: UIScreen.main.bounds.width, height: 350)
                                
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .edgesIgnoringSafeArea(.top)
                    .navigationBarHidden(true)
                }
                .navigationBarColor(backgroundColor: .clear, tintColor: .orange)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
