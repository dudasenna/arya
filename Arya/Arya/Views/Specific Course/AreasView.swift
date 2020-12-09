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
            // MARK: Header
            HStack {
                
                // MARK: Title
                Label(
                    title: { Text("Áreas de atuação")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.purple)
                    },
                    icon: {})
                
                Spacer()
                
                // MARK: Exit Button
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
            .padding(.bottom, 5)
            ScrollView(.vertical) {
                LazyVGrid(columns: gridLayout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        AreaCardView()
                            .padding(.top)
                    }
                }
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 200)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct AreasView_Previews: PreviewProvider {
    static var previews: some View {
        AreasView()
    }
}
