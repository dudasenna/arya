//
//  Favorites.swift
//  Arya
//
//  Created by Ana Carolina Soares de Melo on 26/11/20.
//

import SwiftUI

struct Favorite {
    private(set) public var title: String
    
    init(title: String){
        self.title = title
    }
}

let categoriesTitle: [String] = ["Comunidades", "Mulheres", "Áreas de atuação", "Curiosidades"]
