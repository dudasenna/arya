//
//  PresentationScreen.swift
//  Arya
//
//  Created by Hugo Santos on 03/12/20.
//

import SwiftUI

struct InitialScreenView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        VStack {
            ZStack {
                Circle()
                    .fill(Color.purple)
                    .shadow(radius: 4)
                    .frame(width: 40, height: 40)
                    .padding(.top, -180)
                    .padding(.leading, 275)
                Circle()
                    .fill(Color.purple)
                    .shadow(radius: 4)
                    .frame(width: 45, height: 45)
                    .padding(.bottom, 175)
                    .padding(.leading, -145)
                Circle()
                    .fill(Color.purple)
                    .shadow(radius: 9)
                    .frame(width: 25, height: 25)
                    .padding(.top, -320)
                    .padding(.leading, -75)
                Circle()
                    .fill(Color.purple)
                    .shadow(radius: 4)
                    .frame(width: 25, height: 25)
                    .padding(.top, 35)
                    .padding(.leading, 115)
                Circle()
                    .fill(Color.purple)
                    .shadow(radius: 4)
                    .frame(width: 100, height: 100)
                    .padding(.top, -170)
                    .padding(.leading, -22)
                Circle()
                    .fill(Color.purple)
                    .shadow(radius: 4)
                    .frame(width: 150, height: 150)
                    .padding(.top, 40)
                    .padding(.leading, 385)
                Circle()
                    .fill(Color.purple)
                    .shadow(radius: 4)
                    .frame(width: 175, height: 175)
                    .padding(.top, -325)
                    .padding(.leading, -275)
                Circle()
                    .fill(Color.purple)
                    .shadow(radius: 9)
                    .frame(width: 300, height: 300)
                    .padding(.leading, 380)
                    .padding(.top, -550)
                Text("Arya")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .bold()
                    .padding(.top, 80)
                    .padding(.leading, -145)
                Text("Tagline")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, 145)
                    .padding(.leading, -144)
            }
            .padding(.top, 155)
            Button (action:{
                viewRouter.currentPage = "onboardingView"
                    })
            {
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 241, height: 54)
                        .foregroundColor(.orange)
                    Text("O que é o projeto")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .padding(.top, 60)
            }
            Button(action: {
                self.viewRouter.currentPage = "tabBarView"
                })
            {
                ZStack {
                    Text("Pular apresentação")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .underline()
                }
                .padding(.top, 10)
            }
        }
    }
    struct InitialScreenView_Previews: PreviewProvider {
        static var previews: some View {
            InitialScreenView()
        }
    }
}
