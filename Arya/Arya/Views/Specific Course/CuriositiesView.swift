//
//  CuriositiesView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct CuriositiesView: View {

    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
            VStack {
            // MARK: ScrollView with Cards
            ScrollView(.vertical,  showsIndicators: false) {
                VStack {
                    ForEach(0..<5) {_ in
                        
                        CuriosityCardView()
                            .frame(
                                minWidth: 0,
                                idealWidth: UIScreen.main.bounds.width,
                                maxWidth: UIScreen.main.bounds.width,
                                idealHeight: (200),
                                maxHeight: (UIScreen.main.bounds.height/3)
                            )
                    }
                }
             }
            }.navigationBarTitle("Curiosidades", displayMode: .large)
    }
}

struct CuriositiesView_Previews: PreviewProvider {
    static var previews: some View {
        CuriositiesView()
    }
}
