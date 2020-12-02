//
//  CuriosityCardView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 30/11/20.
//

import SwiftUI

struct CuriosityCardView: View {
    var body: some View {
        VStack {
            HStack{
                // MARK: Title
                Label(
                    title: { Text("Você sabia?")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.orange)
                    },
                    icon: {})
                
                Spacer()
                
                // MARK: Heart Button
                Button(action: {
                    print("Heart button tapped!")
                }) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 30, height: 27, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.purple)
                }
            }
            
            // MARK: Curiosity Content
            
            // Remember to replace the example text to var
            Label(
                title: { Text("A tecnologia usada nos telefones celulares e nas redes wi-fi também foi criada por uma mulher, no caso, Hedy Lamarr.")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color(.darkGray))
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: UIScreen.main.bounds.width - 60, minHeight: 0, idealHeight: 100)
                    .multilineTextAlignment(.leading)
                },
                icon: {})
                .padding(.vertical)

        }
        .padding()
        .frame(width: UIScreen.main.bounds.width - 50)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.purple, lineWidth: 2)
        )
    }
}

struct CuriosityCardView_Previews: PreviewProvider {
    static var previews: some View {
        CuriosityCardView()
    }
}
