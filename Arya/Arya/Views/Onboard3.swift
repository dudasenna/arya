//
//  Onboard1.swift
//  Arya
//
//  Created by Eduarda Senna on 18/11/20.
//

import SwiftUI

struct Onboard3: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack(alignment: .center) {
                Button(action:/*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "chevron.left").foregroundColor(.purple)
                        .padding(.leading, 3.0)
                        .font(Font.system(.title))
                })
                Spacer()
                Button(action:/*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Pular")
                        .font(.callout)
                        .foregroundColor(Color.purple)
                })
                
            }
            .padding([.top, .bottom, .trailing])
            HStack() {
                Text("Venha somar")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.orange)
                    .padding(.all)
                Spacer()
            }
            Spacer()
            Text("Você sabia que apenas 30% de todas as estudates escolhem campos relacionados a STEM na educação superior?\n\nVenha mudar essa estatística conosco!")
                .font(.callout)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, -2.0)
                .padding(.bottom, 20.0)
//            Spacer()
            HStack(alignment: .center) {
                //... simbólico
                Text(". . .")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.orange)
                Spacer()
                ZStack() {
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Button(action:/*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "chevron.right").foregroundColor(.white)
                            .font(Font.system(.title))
                    })
                }
            }
            .padding(.bottom, 40.0)
            .padding([.top, .leading, .trailing])
        }
        .padding(.all)
    }
}

struct Onboard3_Previews: PreviewProvider {
    static var previews: some View {
        Onboard3()
            .previewDevice("iPhone 8")
    }
}
