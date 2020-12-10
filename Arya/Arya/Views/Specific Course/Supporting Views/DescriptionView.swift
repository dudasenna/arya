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
                    title: { Text("Ciências da Computação")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.purple)
                    },
                    icon: {})
                    .padding(.horizontal)
                Spacer()
                
            }
            
            // MARK: Description of course
            HStack {
                Text("Trabalha, essencialmente,  na elaboração de programas de informática, para computadores ou dispositivos móveis, como celulares e tablets. ")
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
