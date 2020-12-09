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
        //        VStack(alignment: .center, spacing: nil, content: {
        //            Text("Curso especifico")
        //            Button(action: {
        //                self.viewRouter.currentPage = "homeView"
        //            }, label: {
        //                Text("Voltar")
        //            })
        //            .padding(.vertical)
        //            Button(action: {
        //                self.viewRouter.currentPage = "curiositiesView"
        //            }, label: {
        //                Text("Curiosidades")
        //            })
        //            .padding(.vertical)
        //            Button(action: {
        //                self.viewRouter.currentPage = "areasView"
        //            }, label: {
        //                Text("Áreas de atuação")
        //            })
        //            .padding(.vertical)
        //            Button(action: {
        //                self.viewRouter.currentPage = "aboutCourseView"
        //            }, label: {
        //                Text("Sobre o curso")
        //            })
        //            .padding(.vertical)
        //        })
        VStack(alignment: .center, spacing: nil, content: {
            HStack(alignment: .center) {
                Button(action:{
                    self.viewRouter.currentPage = "tabBarView"
                }, label: {
                    Image(systemName: "chevron.left").foregroundColor(.purple)
                        .padding(.leading, 5.0)
                        .font(Font.system(.title))
                })
                Spacer()
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
            }
            .padding(.all)
            Spacer()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 0, content: {
                    Button(action: {}, label: {
                        Text("Comunidades")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 130.0, height: 130.0)
                            .background(Color.purple)
                            .cornerRadius(100)
                    })
                    .offset(x: 0, y: -40)
                    
                    Button(action: {}, label: {
                        Text("Mulheres da área")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 130.0, height: 130.0)
                            .background(Color.purple)
                            .cornerRadius(100)
                    })
                    .offset(x: 35, y: -200.0)
                    
                    Button(action: {}, label: {
                        Text("Mulheres que fazem")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 130.0, height: 130.0)
                            .background(Color.purple)
                            .cornerRadius(100)
                    })
                    .offset(x: -30, y: 130)
                    
                    Button(action: {}, label: {
                        Text("Ciência da Computação")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 200.0, height: 200.0)
                            .background(Color.purple)
                            .cornerRadius(100)
                    })
                    .offset(x: 0, y: -50)
                    
                    Button(action: {
                        self.viewRouter.currentPage = "curiositiesView"
                    }, label: {
                        Text("Curiosidades")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 130.0, height: 130.0)
                            .background(Color.purple)
                            .cornerRadius(100)
                    })
                    .offset(x: 30, y: -200)
                    
                    Button(action: {
                        self.viewRouter.currentPage = "aboutCourseView"
                    }, label: {
                        Text("Sobre o curso")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 130.0, height: 130.0)
                            .background(Color.purple)
                            .cornerRadius(100)
                    })
                    .offset(x: -30, y: 130)
                    
                    Button(action: {
                        self.viewRouter.currentPage = "areasView"
                    }, label: {
                        Text("Áreas de atuação")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 130.0, height: 130.0)
                            .background(Color.purple)
                            .cornerRadius(100)
                    })
                    .offset(x: 0, y: -40)
                })
                .padding(.all)
                .frame(minWidth: 1000, idealWidth: 1000, maxWidth: .infinity,
                       minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
            }.frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0,
                    idealHeight: 100, maxHeight: .infinity, alignment: .center)
            Spacer()
        })
    }
}
struct Course_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}