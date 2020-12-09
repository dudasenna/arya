//
//  AreaCardView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct AreaCardView: View {

    @State var heartShape = "heart"

    var body: some View {
        VStack {
            HStack{
                Spacer()
                
                // MARK: Heart Button
                Button(action: {
                    print("Heart button tapped!")
                    if (heartShape == "heart") {
                        self.heartShape = "heart.fill"
                    } else {
                        heartShape = "heart"
                    }
                }) {
                    Image(systemName: heartShape)
                        .resizable()
                        .frame(width: 30, height: 27, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.purple)
                }
            }
            
            HStack {
                // MARK: Title
                Label(
                    title: { Text("Nome da área")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.orange)
                        .lineLimit(nil)
                    },
                    icon: {})
                
                Spacer()
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            // MARK: Curiosity Content
            
            // Remember to replace the example text to var
            Label(
                title: { Text("Texto falando mais sobre a área específica")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color(.darkGray))
                    .frame(
                        minWidth: 0,
                        idealWidth: 100,
                        maxWidth: UIScreen.main.bounds.width - 60,
                        minHeight: 0,
                        idealHeight: 100
                    )
                    .multilineTextAlignment(.leading)
                },
                icon: {})
                .frame(alignment: .topLeading)
                .padding(.vertical)
            
        }
        .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.height/4, alignment: .topLeading)
        .padding(.vertical)
        .padding(.horizontal)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.purple, lineWidth: 2)
            
        )
    }
}

struct AreaCardView_Previews: PreviewProvider {
    static var previews: some View {
        AreaCardView()
    }
}
