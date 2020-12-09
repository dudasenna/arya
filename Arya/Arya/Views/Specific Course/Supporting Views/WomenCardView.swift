//
//  WomenCardView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 09/12/20.
//

import SwiftUI

struct WomenCardView: View {
    
    @State var heartShape = "heart"

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack {
                    // MARK: Heart Button
                    HStack {
                        Spacer()
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
                                .frame(width: 30, height: 27, alignment: .center)
                                .foregroundColor(.purple)
                        }
                    }.padding(.horizontal)
                    // MARK: Image
                    ZStack {
                        Circle()
                            .frame(width: 120, height: 120, alignment: .center)
                            .foregroundColor(.purple)
                        Image(systemName: "person.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .clipped()
                    }
                    // MARK: Name
                    Label(
                        title: {
                            Text("Irmã Mary \n Kenneth Keller")
                                .font(.title2)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                        },
                        icon: {}
                    ).padding(.top, 15)
                    .foregroundColor(.orange)
                    // MARK: Description
                    Label(
                        title: {
                            Text("Considerada a primeira mulher a receber um doutorado em ciências da computação")
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 10)
                        },
                        icon: {}
                    ).padding(.top, 15)
                    .foregroundColor(Color(.darkGray))
                }.padding(.bottom)
                
            }
            .frame(width: 250, height: 400, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.purple, lineWidth: 2))
            .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 85) / -20), axis: (x: 0, y: 2.0, z: 0))
            
        }.padding(.vertical, 50)    }
}

struct WomenCardView_Previews: PreviewProvider {
    static var previews: some View {
        WomenCardView()
    }
}
