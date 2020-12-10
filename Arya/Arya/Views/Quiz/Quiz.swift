//
//  Quiz.swift
//  Arya
//
//  Created by Eduarda Senna on 07/12/20.
//

import SwiftUI

var stars = 0

struct QuizView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State var currentPageIndex = 0
    
    @State private var scaleValue = CGFloat(1)

    var questions = ["Quem foi responsável pela criação do primeiro algoritmo na história?", "Pergunta 2", "Pergunta 3"]
    
    var answer1 =  ["Karen Sparck Jones", "Ada Lovelace", "Grace Hopper"]
    
    var answer2 =  ["resposta2", "resposta2", "resposta2"]
    
    var answer3 =  ["resposta3", "resposta3", "resposta3"]

    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
                Rectangle()
                    .frame(height: UIScreen.main.bounds.height/2.5)
                    .foregroundColor(.purple)
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: nil, content: {
                    HStack(alignment: .center, spacing: nil, content: {
                        Button (action: {}, label: {
                            Image(systemName: "questionmark.circle").foregroundColor(.white)
                                .padding(.leading, 5.0)
                                .font(Font.system(.title))
                        })
                        Spacer()
                        Button (action: {}, label: {
                            Image(systemName: "xmark").foregroundColor(.white)
                                .padding(.leading, 5.0)
                                .font(Font.system(.title))
                        })
                    })
                    .padding(.vertical, 15.0)
                    .padding(.horizontal)
                    ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
                        Rectangle()
                            .frame(height: UIScreen.main.bounds.height/5)
                            .frame(width: UIScreen.main.bounds.width/1.3)
                            .cornerRadius(25)
                            .foregroundColor(.white)
                            .shadow(radius: 25)
                            .offset(x:5, y: 5)
                        Rectangle()
                            .frame(height: UIScreen.main.bounds.height/5)
                            .frame(width: UIScreen.main.bounds.width/1.3)
                            .cornerRadius(25)
                            .foregroundColor(.white)
                            .shadow(radius: 25)
                        Rectangle()
                            .frame(height: UIScreen.main.bounds.height/5)
                            .frame(width: UIScreen.main.bounds.width/1.3)
                            .cornerRadius(25)
                            .foregroundColor(.white)
                            .shadow(radius: 25)
                            .offset(x: -5, y: -4)
                            .overlay(
                                Text(questions[currentPageIndex])
                                    .font(.title3)
                                    .fontWeight(.black)
                                    .foregroundColor(Color.purple)
                                    .multilineTextAlignment(.center)
                                    .padding(.all)
                                    .offset(x: -3)
                            )
                    })
                    PageControlQuizView(numberOfPages: questions.count, currentPageIndex: $currentPageIndex)
                        .padding(.top, 5.0)
                })
            })
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.purple, lineWidth: 3)
                .frame(height: UIScreen.main.bounds.height/12)
                .frame(width: UIScreen.main.bounds.width/1.3)
                .padding(.vertical)
                .overlay(
                    Button(action: {
                        if (currentPageIndex < questions.count - 1) {
                            currentPageIndex += 1
                            print(stars)
                        } else {
                            self.viewRouter.currentPage = "quizFinalView"
                        }
                    }, label: {
                        if (currentPageIndex == 0){
                            Text(answer1[0])
                                .font(.headline)
                                .foregroundColor(Color.purple)
                        } else if (currentPageIndex == 1){
                            Text(answer2[0])
                                .font(.headline)
                                .foregroundColor(Color.purple)
                        } else if (currentPageIndex == 2){
                            Text(answer3[0])
                                .font(.headline)
                                .foregroundColor(Color.purple)
                        }
                        
                    })
                    .frame(height: UIScreen.main.bounds.height/12)
                    .frame(width: UIScreen.main.bounds.width/1.3)
                )
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.purple, lineWidth: 3)
                .frame(height: UIScreen.main.bounds.height/12)
                .frame(width: UIScreen.main.bounds.width/1.3)
                .padding(.vertical)
                .overlay(
                    Button(action: {
                        if (currentPageIndex < questions.count - 1) {
                            currentPageIndex += 1
                            stars += 1
                            print(stars)
                        } else {
                            stars += 1
                            print(stars)
                            self.viewRouter.currentPage = "quizFinalView"
                        }
                    }, label: {
                        if (currentPageIndex == 0){
                            Text(answer1[1])
                                .font(.headline)
                                .foregroundColor(Color.purple)
                        } else if (currentPageIndex == 1){
                            Text(answer2[1])
                                .font(.headline)
                                .foregroundColor(Color.purple)
                        } else if (currentPageIndex == 2){
                            Text(answer3[1])
                                .font(.headline)
                                .foregroundColor(Color.purple)
                        }
                    })
                    .frame(height: UIScreen.main.bounds.height/12)
                    .frame(width: UIScreen.main.bounds.width/1.3)
                )
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.purple, lineWidth: 3)
                .frame(height: UIScreen.main.bounds.height/12)
                .frame(width: UIScreen.main.bounds.width/1.3)
                .padding(.vertical)
                .overlay(
                    Button(action: {
                        if (currentPageIndex < questions.count - 1) {
                            currentPageIndex += 1
                            print(stars)
                        } else {
                            self.viewRouter.currentPage = "quizFinalView"
                        }
                    }, label: {
                        if (currentPageIndex == 0){
                            Text(answer1[2])
                                .font(.headline)
                                .foregroundColor(Color.purple)
                        } else if (currentPageIndex == 1){
                            Text(answer2[2])
                                .font(.headline)
                                .foregroundColor(Color.purple)
                        } else if (currentPageIndex == 2){
                            Text(answer3[2])
                                .font(.headline)
                                .foregroundColor(Color.purple)
                        }
                    })
                    .frame(height: UIScreen.main.bounds.height/12)
                    .frame(width: UIScreen.main.bounds.width/1.3)
                )
            Spacer()
        })
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
