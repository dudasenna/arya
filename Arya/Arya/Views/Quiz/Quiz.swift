//
//  Quiz.swift
//  Arya
//
//  Created by Eduarda Senna on 07/12/20.
//

import SwiftUI

struct QuizView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            Text("Quiz")
            Button(action: {
                self.viewRouter.currentPage = "quizFinalView"
            }, label: {
                Text("Quiz Final")
            })
        })
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
