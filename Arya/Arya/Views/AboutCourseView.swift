//
//  AboutCourseView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct AboutCourseView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        VStack {
            // MARK: Header
            HStack {
                
                // MARK: Title
                Label(
                    title: { Text("Como é o curso")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.purple)
                    },
                    icon: {})
                
                Spacer()
                
                // MARK: Exit Button
                Button(action: {
                    self.viewRouter.currentPage = "courseView"
                }) {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.purple)
                }
            }
            .padding()
            .padding(.bottom, 5)
            
            // MARK: Body
            DescriptionView()
            CurriculumCardView()
                .padding(.vertical)
            HStack {
                LengthCardView()
                Spacer()
                UniversitiesCardView()
            }
            .frame(width: UIScreen.main.bounds.width - 50)
            
            Spacer()
        }
    }
}

struct AboutCourseView_Previews: PreviewProvider {
    static var previews: some View {
        AboutCourseView()
    }
}
