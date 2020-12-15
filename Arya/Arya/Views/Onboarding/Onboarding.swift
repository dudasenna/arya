//
//  OnboardingView.swift
//  App Onboarding
//
//  Created by Andreas Schultz on 10.08.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

//Create your Onboarding view, tutorial can be found at:
//https://blckbirds.com/post/how-to-create-a-onboarding-screen-in-swiftui-1/

import SwiftUI

struct OnboardingView: View {
    
//    var subviews = [
//        UIHostingController(rootView: Subview(imageString: "meditating")),
//        UIHostingController(rootView: Subview(imageString: "skydiving")),
//        UIHostingController(rootView: Subview(imageString: "sitting"))
//    ]
    
    var titles = ["Descubra", "Ciência também é coisa de menina", "Venha somar"]
    
    var captions =  ["Desvende os cursos da área de exatas, conheça mais sobre as áreas de atuação e curiosidades de cada curso.",
                     "Conheça a história de mulheres que fizeram e fazem a diferença em cada curso, além das comunidades femininas atuais.",
                     "Você sabia que apenas 30% de todas as estudates escolhem campos relacionados a STEM na educação superior?\n\nVenha mudar essa estatística conosco!"]
    
    @EnvironmentObject var viewRouter: ViewRouter
    
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
            }
            .padding(.all)
            
            Group {
                Text(titles[currentPageIndex])
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.orange)
                    .padding(.all)
                Spacer()
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
    
    func handleSwipe(sender: UISwipeGestureRecognizer) {

         if sender.direction == .right { // user swiped right
              // push view controller (push new view on the navigation stack)
//              self.navigationController?.pushViewController(OnboardingView(), animated: true)
            self.currentPageIndex += 1

         } else { // user swiped left
              // pop view controller (go back one view on the navigation stack)
//              self.navigationController?.popViewController(animated: true)
            self.currentPageIndex -= 1

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

//let rightSwipe : UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
//rightSwipe.direction = .right
//
//   let leftSwipe : UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
//leftSwipe.direction = .left
//
//
//func handleSwipe(sender: UISwipeGestureRecognizer) {
//
//     if sender.direction == .right { // user swiped right
//          // push view controller (push new view on the navigation stack)
//          self.navigationController?.pushViewController(viewController(), animated: true)
//
//     } else { // user swiped left
//          // pop view controller (go back one view on the navigation stack)
//          self.navigationController?.popViewController(animated: true)
//
//     }
//}

#if DEBUG
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().environmentObject(ViewRouter())
    }
}
#endif
