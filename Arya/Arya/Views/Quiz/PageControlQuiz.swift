//
//  PageControl.swift
//  App Onboarding
//
//  Created by Andreas Schultz on 17.08.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

//Create your Onboarding view, tutorial can be found at:
//https://blckbirds.com/post/how-to-create-a-onboarding-screen-in-swiftui-1/

import Foundation
import UIKit
import SwiftUI

struct PageControlQuizView: UIViewRepresentable {
    
    var numberOfPages: Int
    
    @Binding var currentPageIndex: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.currentPageIndicatorTintColor = UIColor.white
        control.pageIndicatorTintColor = UIColor.gray

        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPageIndex
    }
    
}