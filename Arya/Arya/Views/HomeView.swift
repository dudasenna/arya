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
                Text("\(namePassar)")
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
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
////        HomeView()
//    }
//}
