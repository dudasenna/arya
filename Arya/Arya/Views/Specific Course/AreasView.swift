//
//  AreasView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct AreasView: View {

    @EnvironmentObject var viewRouter: ViewRouter

    let data = Array(1...15).map {"Favorited\($0)"}
    let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                LazyVGrid(columns: gridLayout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        AreaCardView()
                            .padding(.top)
                    }
                }
            }
        }.navigationBarTitle("Áreas de Atuação", displayMode: .large)
    }
}

struct AreasView_Previews: PreviewProvider {
    static var previews: some View {
        AreasView()
    }
}
