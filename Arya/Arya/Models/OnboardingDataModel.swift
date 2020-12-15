//
//  OnboardingModel.swift
//  Onboarding
//
//  Created by Augustinas Malinauskas on 06/07/2020.
//  Copyright © 2020 Augustinas Malinauskas. All rights reserved.
//

import Foundation

struct OnboardingDataModel {
    var image: String
    var heading: String
    var text: String
}

extension OnboardingDataModel {
    static var data: [OnboardingDataModel] = [
        OnboardingDataModel(image: "onboarding-showclients", heading: "Descubra", text: "Desvende os cursos da área de exatas, conheça mais sobre as áreas de atuação e curiosidades de cada curso."),
        OnboardingDataModel(image: "onboarding-loving", heading: "Ciência também é coisa de menina",
                            text: "Conheça a história de mulheres que fizeram e fazem a diferença em cada curso, além das comunidades femininas atuais."),
        OnboardingDataModel(image: "onboarding-sharepizza", heading: "Venha somar",
                            text: "Você sabia que apenas 30% de todas as estudates escolhem campos relacionados a STEM na educação superior?\n\nVenha mudar essa estatística conosco!"),
    ]
}
