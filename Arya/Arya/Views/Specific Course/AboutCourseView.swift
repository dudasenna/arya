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
        }.navigationBarTitle("Como é o curso", displayMode: .large)
    }
}

struct AboutCourseView_Previews: PreviewProvider {
    static var previews: some View {
        AboutCourseView()
    }
}
