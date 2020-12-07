//
//  MotherView.swift
//  Arya
//
//  Created by Eduarda Senna on 01/12/20.
//

import SwiftUI

struct MotherView : View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == "initialScreenView" {
                InitialScreenView()
            } else if viewRouter.currentPage == "onboardingView" {
                OnboardingView()
            } else if viewRouter.currentPage == "onboardingFinalView" {
                OnboardingFinalView()
            } else if viewRouter.currentPage == "homeView" {
                HomeView()
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
