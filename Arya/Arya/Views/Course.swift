//
//  Course.swift
//  Arya
//
//  Created by Eduarda Senna on 07/12/20.
//

import SwiftUI

struct CourseView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            Text("Curso especifico")
            Button(action: {
                self.viewRouter.currentPage = "homeView"
            }, label: {
                Text("Voltar")
            })
            .padding(.vertical)
            Button(action: {
                self.viewRouter.currentPage = "curiositiesView"
            }, label: {
                Text("Curiosidades")
            })
            .padding(.vertical)
            Button(action: {
                self.viewRouter.currentPage = "areasView"
            }, label: {
                Text("Áreas de atuação")
            })
            .padding(.vertical)
            Button(action: {
                self.viewRouter.currentPage = "aboutCourseView"
            }, label: {
                Text("Sobre o curso")
            })
            .padding(.vertical)
        })
    }
}

struct Course_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}
