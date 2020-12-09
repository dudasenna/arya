//
//  Onboard1.swift
//  Arya
//
//  Created by Eduarda Senna on 18/11/20.
//

import SwiftUI

struct OnboardingFinalView: View {

    @State var name: String = ""
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State var currentPageIndex = 0

    var body: some View {
        VStack(alignment: .center) {
            HStack(alignment: .center) {
                Button(action:{
                    viewRouter.currentPage = "onboardingView"
                    
                }, label: {
                    Image(systemName: "chevron.left").foregroundColor(.purple)
                        .padding(.leading, 3.0)
                        .font(Font.system(.title))
                })
                Spacer()
            }
            .padding([.top, .bottom, .trailing])
            
            Text("Agora que nos conheceu mais, conte um pouco sobre você?")
                .font(.callout)
                .foregroundColor(Color.gray)
                .padding(.vertical, 30.0)
            HStack() {
                Text("Como seus amigos\nte chamam?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                    .padding(.all)
                Spacer()
            }
            
            TextField("Seu nome", text: $name)
                .padding(.leading)
                .frame(width: 300, height: 50, alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .stroke(Color.purple, lineWidth: 2)
                        .frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                )
            Spacer()
            
            RoundedRectangle(cornerRadius: 25).foregroundColor(.orange)
                .frame(width: 240, height: 50, alignment: .center)
                .overlay(
                    Button(action:{
                        withAnimation {
                            self.viewRouter.currentPage = "tabBarView"
                            print(name)
                        }
                    }, label: {
                        Text("Vamos começar")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                    })
                )
                .padding(.bottom, 60.0)
            .padding([.top, .leading, .trailing])
        }
        .padding(.all)
    }
}

struct Onboard4_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFinalView()
            .previewDevice("iPhone 8")
    }
}
