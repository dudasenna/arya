//
//  LengthCardView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct LengthCardView: View {
    var body: some View {
        VStack {
            // MARK: Title
            HStack {
                Label(
                    title: { Text("Duração média")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                    },
                    icon: {})
                Spacer()
                
            }
            
            // MARK: Body
            HStack {
                Image(systemName: "clock.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.orange)
                    .padding(.bottom, 5)
                VStack {
                    Text("10")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.darkGray))
                        .padding(.top, 5)
                        .frame(width: 80, alignment: .leading)
                    Text("períodos")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.darkGray))
                        .frame(width: 80, alignment: .leading)
                }
                .padding(.bottom)
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

struct LengthCardView_Previews: PreviewProvider {
    static var previews: some View {
        LengthCardView()
    }
}
