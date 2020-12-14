//
//  PresentationScreen.swift
//  Arya
//
//  Created by Hugo Santos on 14/12/20.
//

import SwiftUI

struct OnboardingView: View {
    
//    var subviews = [
//        UIHostingController(rootView: Subview(imageString: "meditating")),
//        UIHostingController(rootView: Subview(imageString: "skydiving")),
//        UIHostingController(rootView: Subview(imageString: "sitting"))
//    ]
    
    var titles = ["Descubra", "Ciência também é coisa de menina", "Venha somar"]
    var images = ["onboarding-makingart",  "onboarding-loving" ,"onboarding-sharepizza"]
    var captions =  ["Desvende os cursos da área de exatas, conheça mais sobre as áreas de atuação e curiosidades de cada curso.",
                     "Conheça a história de mulheres que fizeram e fazem a diferença em cada curso, além das comunidades femininas atuais.",
                     "Você sabia que apenas 30% de todas as estudates escolhem campos relacionados a STEM na educação superior?\n\nVenha mudar essa estatística conosco!"]
    
    @EnvironmentObject var viewRouter: ViewRouter
    @State var slideGesture: CGSize = CGSize.zero
    @State var currentPageIndex = 0
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Button(action:{
                    if currentPageIndex == 0 {
                        viewRouter.currentPage = "initialScreenView"
                    } else {
                        self.currentPageIndex -= 1
                    }
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
                    Text("Pular")
                        .font(.callout)
                        .foregroundColor(Color.purple)
                })
                .padding(.trailing, 5.0)
                
//                .animation(.spring())
//                .gesture(DragGesture().onChanged{ value in
//                    self.slideGesture = value.translation
//                }
//                .onEnded{ value in
//                    if self.slideGesture.width < -50 {
//                        if self.currentPageIndex <  -1 {
//                            withAnimation {
//                                self.currentPageIndex += 1
//                            }
//                        }
//                    }
//                    if self.slideGesture.width > 50 {
//                        if self.currentPageIndex > 0 {
//                            withAnimation {
//                                self.currentPageIndex -= 1
//                            }
//                        }
//                    }
//                    self.slideGesture = .zero
//                })
            }
            .padding(.all)
            Group {
                Text(titles[currentPageIndex])
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.orange)
                    .padding(.all)
                //Spacer()
                Image(images[currentPageIndex])
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 50)
                    .padding(.horizontal, 55)
    
                Text(captions[currentPageIndex])
                    .font(.body)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing])
                    .padding(.bottom, 40.0)
//                    .frame(width: 300, height: 50, alignment: .leading)
            }
            .padding(.all)
            
//            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews)
//                .frame(height: 600)
            Spacer()
            HStack {
                PageControl(numberOfPages: titles.count, currentPageIndex: $currentPageIndex)
                Spacer()
                if currentPageIndex == 2 {
                    Button(action: {
                        withAnimation {
                            self.viewRouter.currentPage = "onboardingFinalView"
                        }
                    }) {
                        ButtonContent()
                    }
                } else {
                    Button(action: {
                        if self.currentPageIndex+1 == self.titles.count {
                            self.currentPageIndex = 0
                        } else {
                            self.currentPageIndex += 1
                        }
                    }) {
                        ButtonContent()
                    }
                }
            }
                .padding()
        }
    }
}

struct ButtonContent: View {
    var body: some View {
        Image(systemName: "arrow.right")
            .resizable()
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .padding()
            .background(Color.orange)
            .cornerRadius(30)
    }
}

#if DEBUG
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().environmentObject(ViewRouter())
    }
}
#endif
