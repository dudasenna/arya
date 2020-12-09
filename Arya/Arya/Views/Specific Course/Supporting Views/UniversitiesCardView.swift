//
//  UniversitiesCardView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct UniversitiesCardView: View {
    var body: some View {
        VStack {
            // MARK: Title
            HStack {
                Label(
                    title: { Text("Universidades")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                    },
                    icon: {})
                Spacer()
                
            }
            
            // MARK: Body
            HStack {
                ScrollView(.vertical,  showsIndicators: false) {
                    VStack {
                        ForEach(0..<10) {_ in
                            Text("UFPE")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color(.darkGray))
                                .padding(.top, 5)
                                .frame(alignment: .topTrailing)
                        }
                    }
                }.padding(.leading, 5)
                Spacer()
            }
        }
        .padding()
        .frame(width: (UIScreen.main.bounds.width/2.4), height: 150)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.purple, lineWidth: 2))
    }
}

struct UniversitiesCardView_Previews: PreviewProvider {
    static var previews: some View {
        UniversitiesCardView()
    }
}
