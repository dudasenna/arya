//
//  CommunitiesView.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 04/12/20.
//

import SwiftUI

struct CommunitiesView: View {

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
                        CommunitiesCardView()
                            .padding(.all)
                    }
                }
            }
            .navigationBarTitle("Comunidades", displayMode: .large)
        }
    }
}

struct CommunitiesView_Previews: PreviewProvider {
    static var previews: some View {
        CommunitiesView()
    }
}
