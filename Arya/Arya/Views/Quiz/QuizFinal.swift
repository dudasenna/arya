//
//  QuizFinal.swift
//  Arya
//
//  Created by Eduarda Senna on 06/12/20.
//

import SwiftUI

struct QuizFinalView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            HStack(alignment: .center, spacing: nil, content: {
                Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "questionmark.circle").foregroundColor(.purple)
                        .padding(.leading, 5.0)
                        .font(Font.system(.title))
                })
                Spacer()
            })
            .padding(.all)
            
            Spacer()
            
            HStack(alignment: .center, spacing: nil, content: {
                Spacer()
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.orange, lineWidth: 3)
//                    .foregroundColor(.yellow)
//                    .frame(width: 260, height: 260, alignment: .center)
                    .frame(minWidth: 260, idealWidth: 300, maxWidth: 300, minHeight: 260, idealHeight: 300, maxHeight: 300, alignment: .center)
                    .overlay(
                        VStack(alignment: .center, spacing: nil, content: {
                            Text("Parabéns")
                                .font(.largeTitle)
                                .fontWeight(.medium)
                                .foregroundColor(Color.purple)
                                .padding(.top)
                            Text("Você concluiu o quiz de hoje!")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color.gray)
                                .padding(.top)
                            Spacer()
                            HStack(alignment: .center, spacing: nil, content: {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.orange)
                                    .font(Font.system(.largeTitle))
                                Image(systemName: "star.fill")
                                    .foregroundColor(.orange)
                                    .font(Font.system(.largeTitle))
                                Image(systemName: "star")
                                    .foregroundColor(.orange)
                                    .font(Font.system(.largeTitle))
                            })
                            Spacer()
                            Text("Volte amanhã para mais perguntas")
                                .font(.caption2)
                                .foregroundColor(Color.gray)
                                .padding(.bottom)
                        })
                        .padding(.top)
                    )
                Spacer()
            })
            
            Spacer()
            
            HStack(alignment: .center, spacing: nil, content: {
                Spacer()
                RoundedRectangle(cornerRadius: 25).foregroundColor(.purple)
                    .frame(width: 140, height: 50, alignment: .center)
                    .overlay(
                        Button(action:{
                            withAnimation {
                            }
                        }, label: {
                            Text("Concluir")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        })
                    )
                Spacer()
            })
            
            Spacer()
            
//            HStack(alignment: .center, spacing: nil, content: {
//                Spacer()
//                RoundedRectangle(cornerRadius: 25).foregroundColor(.purple)
//                    .frame(width: 300, height: 70, alignment: .center)
//                    .overlay(
//                        Button(action:{
//                            withAnimation {
//                            }
//                        }, label: {
//                            Text("TABBAR")
//                                .font(.headline)
//                                .fontWeight(.bold)
//                                .foregroundColor(Color.white)
//                                .multilineTextAlignment(.center)
//                        })
//                    )
//                Spacer()
//            })
//            .padding(.bottom, 30.0)
                        
        })
        .overlay(
            Circle()
                .frame(width: 15.0, height: 15.0)
                .animation(.interpolatingSpring(stiffness: 50, damping: 1))
        )
    }
}

struct QuizFinalView_Previews: PreviewProvider {
    static var previews: some View {
        QuizFinalView()
            .previewDevice("iPhone 8")
    }
}
