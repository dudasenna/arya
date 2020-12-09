//
//  WomenNowView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 09/12/20.
//

import SwiftUI

struct WomenNowView: View {
    var women:[String] = ["Mary", "Duda", "Ana", "Vitória", "Malu"]
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        VStack {
            HStack {
                
                // MARK: Title
                Label(
                    title: { Text("Mulheres \nque fazem")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.purple)
                    },
                    icon: {})
                
                Spacer()
                
                // MARK: Heart Button
                Button(action: {
                    self.viewRouter.currentPage = "courseView"
                }) {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.purple)
                }
            }
            .padding()
            .offset(y: 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 250) {
                    ForEach(women, id: \.self) { women in
                        WomenCardView()
                    }
                    Spacer()
                }.padding(.horizontal, (UIScreen.main.bounds.width/2) - 125)
            }
        }
    }
}

struct WomenNowView_Previews: PreviewProvider {
    static var previews: some View {
        WomenNowView()
    }
}
