//
//  DescriptionView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack {
            // MARK: Title
            HStack {
                Label(
                    title: { Text("Nome do Curso")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.orange)
                    },
                    icon: {})
                    .padding(.horizontal)
                Spacer()
                
            }
            
            // MARK: Description of course
            HStack {
                Text("Descrição sobre o curso")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color(.darkGray))
                    .padding(.horizontal)
                    .padding(.top, 5)
                Spacer()
                
            }
        }
        .padding()
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
