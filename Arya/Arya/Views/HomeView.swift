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
            VStack(alignment: .center, spacing: nil, content: {
                Text("Todos os cursos")
                NavigationLink(
                    destination: CourseView()) {
                    VStack {
                    Text("Curso específico")
                        .foregroundColor(Color.purple)
                    }
                }
                .padding(.vertical)
            })
        }.navigationBarColor(backgroundColor: .clear, tintColor: .orange)
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
