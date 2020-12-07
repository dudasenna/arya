//
//  TabBarView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 07/12/20.
//

import SwiftUI

struct TabBarView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Início")
                }.tag(0)
            // Swap function Text("Quiz") for function below
            QuizView()
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text("Quiz")
                }.tag(1)
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Perfil")
                }.tag(2)
        }
        .accentColor(.orange)
    }
}

extension UITabBarController {
    override open func viewDidLoad() {
        super.viewDidLoad()
        let standardAppearance = UITabBarAppearance()
//
        standardAppearance.backgroundColor = .clear
//
        tabBar.standardAppearance = standardAppearance
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
