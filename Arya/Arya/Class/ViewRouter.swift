//
//  ViewRouter.swift
//  Arya
//
//  Created by Eduarda Senna on 01/12/20.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {

    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "initialScreenView"
        } else {
            currentPage = "homeView"
        }
    }
    
    @Published var currentPage: String
    
}
