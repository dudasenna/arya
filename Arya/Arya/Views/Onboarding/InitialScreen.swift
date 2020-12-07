//
//  InitialScreen.swift
//  Arya
//
//  Created by Eduarda Senna on 04/12/20.
//

import Foundation
import SwiftUI

struct InitialScreenView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var currentPageIndex = 0
    var body: some View {
        Button(action:{
            self.viewRouter.currentPage = "onboardingView"
        }, label: {
            Image(systemName: "chevron.left").foregroundColor(.purple)
                .padding(.leading, 5.0)
                .font(Font.system(.title))
        })
    }
}

struct InitialScreenView_Previews: PreviewProvider {
    static var previews: some View {
        InitialScreenView()
    }
}
