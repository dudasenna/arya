//
//  Course.swift
//  Arya
//
//  Created by Eduarda Senna on 07/12/20.
//

import SwiftUI

struct CourseView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {

            VStack(alignment: .center, spacing: nil) {
                // MARK: ScrollView
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 0, content: {
                        
                        // MARK: Communities
                        NavigationLink(
                            destination: CuriositiesView()) {
                            Text("Comunidades")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 130.0, height: 130.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: 0, y: -40)
                        
                        // MARK: Women Past
                        NavigationLink(
                            destination: WomenPastView()) {
                            Text("Mulheres que fizeram")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 130.0, height: 130.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: 35, y: -200.0)
                        
                        // MARK: Women Now
                        NavigationLink(
                            destination: WomenNowView()) {
                            Text("Mulheres que fazem")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 130.0, height: 130.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: -30, y: 130)
                        
                        // MARK: Degree
                            Text("Ciência da Computação")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 200.0, height: 200.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                                .offset(x: 0, y: -50)
                        
                        // MARK: Curiosities
                        NavigationLink(
                            destination: CuriositiesView()) {
                            Text("Curiosidades")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 130.0, height: 130.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: 30, y: -200)
                        
                        // MARK: About Degree
                        NavigationLink(
                            destination: AboutCourseView()) {
                            Text("Sobre o curso")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 130.0, height: 130.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: -30, y: 130)
                        
                        // MARK: Areas
                        NavigationLink(
                            destination: AreasView()) {
                            Text("Áreas de atuação")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 130.0, height: 130.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: 0, y: -40)
                    })
                    .padding(.all)
                    .frame(minWidth: 1000, idealWidth: 1000, maxWidth: .infinity,
                           minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                }.frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0,
                        idealHeight: 100, maxHeight: .infinity, alignment: .center)
                Spacer()
            }
        .navigationBarItems(trailing:
                Button(action:{
                    withAnimation {
                        self.viewRouter.currentPage = "onboardingFinalView"
                    }
                }, label: {
                    Image(systemName: "questionmark.circle")
                        .font(.title)
                        .foregroundColor(Color.purple)
                })
                .padding(.trailing, 5.0)
            )
    }
}

struct Course_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}
