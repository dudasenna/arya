//
//  MyJourneysViews.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 25/11/20.
//

import SwiftUI

struct MyJourneysView: View {
    var body: some View {
        // MARK: JORNADAS
        VStack {
            HStack {
                Label(
                    title: { Text("Minhas Jornadas")
                        .font(.title3)
                        .fontWeight(.heavy)
                        
                    },
                    icon: {}
                )
                .foregroundColor(.orange)
                .padding(.leading)
                Spacer()
            }
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                    ForEach(0..<10) {_ in
                        Circle()
                            .frame(width: 90, height: 90)
                            .foregroundColor(.purple)
                            .opacity(0.25)
                            .padding(.leading, 10)
                        
                    }
                }
            }.padding(.bottom, 30)
            Divider()
        }
    }
}

struct MyJourneysViews_Previews: PreviewProvider {
    static var previews: some View {
        MyJourneysView()
    }
}
