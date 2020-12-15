//
//  OnboardingViewPure.swift
//  Onboarding
//
//  Created by Augustinas Malinauskas on 06/07/2020.
//  Copyright © 2020 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct OnboardingViewPure: View {
    var data: [OnboardingDataModel]
    var doneFunction: () -> ()
    
    @State var slideGesture: CGSize = CGSize.zero
    @State var curSlideIndex = 0
    @EnvironmentObject var viewRouter: ViewRouter
    var distance: CGFloat = UIScreen.main.bounds.size.width
    @State var currentPageIndex = 0
    
    
    func nextButton() {
        if self.curSlideIndex == self.data.count - 1 {
            self.viewRouter.currentPage = "onboardingFinalView"
            //            doneFunction()
            return
        }
        
        if self.curSlideIndex < self.data.count - 1 {
            withAnimation {
                self.curSlideIndex += 1
            }
        }
    }
    
    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            
            ZStack(alignment: .center) {
                ForEach(0..<data.count) { index in
                    OnboardingStepView(data: self.data[index])
                        .offset(x: CGFloat(index) * self.distance)
                        .offset(x: self.slideGesture.width - CGFloat(self.curSlideIndex) * self.distance)
                        .animation(.spring())
                        .gesture(DragGesture().onChanged{ value in
                            self.slideGesture = value.translation
                        }
                        .onEnded{ value in
                            if self.slideGesture.width < -50 {
                                if self.curSlideIndex < self.data.count - 1 {
                                    withAnimation {
                                        self.curSlideIndex += 1
                                        self.currentPageIndex += 1
                                    }
                                }
                            }
                            if self.slideGesture.width > 50 {
                                if self.curSlideIndex > 0 {
                                    withAnimation {
                                        self.curSlideIndex -= 1
                                        self.currentPageIndex -= 1
                                    }
                                }
                            }
                            self.slideGesture = .zero
                        })
                }
            }
            
            
            VStack {
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
                .padding(.bottom)
                Spacer()
                ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
                    HStack (alignment: .center, spacing: nil, content: {
                        self.progressView()
                    })
                    HStack(alignment: .center, spacing: nil, content: {
                        Button(action: nextButton) {
                            self.arrowView()
                        }
                    })
                })
            }
            .padding(20)
        }
    }
    
    func arrowView() -> some View {
        Group {
            if self.curSlideIndex == self.data.count - 1 {
                HStack {
                    Text("Continuar")
                        .font(.title3)
                        .foregroundColor(Color(.systemBackground))
                }
                .frame(width: 120, height: 50)
                .background(Color(.systemOrange))
                .cornerRadius(25)
            }
            else {
                let nothing = 1
            }
            //    else {
            //                Image(systemName: "arrow.right.circle.fill")
            //                    .resizable()
            //                    .foregroundColor(Color(.label))
            //                    .scaledToFit()
            //                    .frame(width: 50)
            //            }
            //        }
        }
    }
    
    func progressView() -> some View {
        HStack {
            ForEach(0..<data.count) { index in
                Circle()
                    .scaledToFit()
                    .frame(width: 10)
                    .foregroundColor(self.curSlideIndex >= index ? Color(.orange) : Color(.systemGray))
            }
        }
    }
    
}

struct OnboardingViewPure_Previews: PreviewProvider {
    static let sample = OnboardingDataModel.data
    static var previews: some View {
        OnboardingViewPure(data: sample, doneFunction: { print("done") })
    }
}
