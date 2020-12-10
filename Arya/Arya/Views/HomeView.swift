//
//  HomeView.swift
//  Arya
//
//  Created by Eduarda Senna on 01/12/20.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        NavigationView {
            HomeScreen()
        }.navigationBarColor(backgroundColor: .white, tintColor: .orange)
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
////        HomeView()
//    }
//}
