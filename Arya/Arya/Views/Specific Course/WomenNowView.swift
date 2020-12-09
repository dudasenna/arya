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
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 250) {
                    ForEach(women, id: \.self) { women in
                        WomenCardView()
                    }
                    Spacer()
                }.padding(.horizontal, (UIScreen.main.bounds.width/2) - 125)
            }
        }.navigationBarTitle("Mulheres que fazem", displayMode: .large)
    }
}

struct WomenNowView_Previews: PreviewProvider {
    static var previews: some View {
        WomenNowView()
    }
}
