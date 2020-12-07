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
            // MARK: Header
            VStack {
                HStack {
                    
                    // MARK: Title
                    Label(
                        title: { Text("Curiosidades")
                            .font(.largeTitle)
                            .fontWeight(.bold)
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
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 100)
            .edgesIgnoringSafeArea(.bottom)
            }
    }
}

struct CuriositiesView_Previews: PreviewProvider {
    static var previews: some View {
        CuriositiesView()
    }
}
