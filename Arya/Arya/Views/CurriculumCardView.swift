//
//  CurriculumCardView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct CurriculumCardView: View {
    var body: some View {
        VStack {
            // MARK: Title
            HStack {
                Label(
                    title: { Text("Perfil curricular")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                    },
                    icon: {})
                Spacer()
                
            }
            
            // MARK: Curriculum content
            HStack {
                Text("Descrição sobre o perfil curricular do curso")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color(.darkGray))
                    .padding(.top, 5)
                    .frame(
                        minWidth: 0,
                        idealWidth: 100,
                        maxWidth: UIScreen.main.bounds.width - 50,
                        minHeight: 0,
                        idealHeight: 100,
                        maxHeight: (UIScreen.main.bounds.height/6),
                        alignment: .topLeading
                    )
                Spacer()
            }
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width - 50)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.purple, lineWidth: 2))
    }
}

struct CurriculumCardView_Previews: PreviewProvider {
    static var previews: some View {
        CurriculumCardView()
    }
}
