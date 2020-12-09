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
        VStack(alignment: .center, spacing: nil, content: {
            Text("Todos os cursos")
            Button(action: {
                self.viewRouter.currentPage = "courseView"
            }, label: {
                Text("Curso específico")
                    .foregroundColor(Color.purple)
            })
            .padding(.vertical)
        })
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
