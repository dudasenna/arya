//
//  BubbleButton.swift
//  AwesomeSplash
//
//  Created by Hugo Santos on 03/12/20.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        HStack(spacing: 1) {
            VStack() {
                HStack {
                    VStack(alignment:  .leading) {
                        Text("Olá, Ana")
                            .font(.title)
                            .foregroundColor(.purple
                            )
                            .fontWeight(.light)
                            .padding(.top, 290)
                            .padding(.leading)
                        Text("Qual curso você quer explorar?")
                            .font(.subheadline)
                            .foregroundColor(.orange)
                            .padding(.top, -4)
                            .padding(.leading)
                    }
                    Spacer()
                }
                Spacer()
                    .frame(height: 30)
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack {
                        NavigationLink(
                            destination: CourseView()) {
                            Text("Ciência da\n"+"Computação")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 150.0, height: 150.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: 153, y: 158)
                        NavigationLink(
                            destination: CourseView()) {
                            Text("Engenheria da\n"+"Computação")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 150.0, height: 150.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: -7, y: -110)
                        
                        NavigationLink(
                            destination: CourseView()) {
                            Text("Matemática")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 110.0, height: 110.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: 59, y: 38)
                        NavigationLink(
                            destination: CourseView()) {
                            Text("Física")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 110.0, height: 110.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: 273, y: -410)
                        
                        NavigationLink(
                            destination: CourseView()) {
                            Text("Sistema da\n"+"Informação")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 150.0, height: 150.0)
                                .background(Color.purple)
                                .cornerRadius(100)
                        }
                        .offset(x: 275, y: -160)
                        
                        Circle()
                            .fill(Color.purple)
                            .shadow(radius: 4)
                            .frame(width: 125, height: 125)
                            .offset(x: -75, y: -220)
                        Circle()
                            .fill(Color.purple)
                            .shadow(radius: 4)
                            .frame(width: 25, height: 25)
                            .offset(x: 125, y: -290)
                        Circle()
                            .fill(Color.purple)
                            .shadow(radius: 4)
                            .frame(width: 25, height: 25)
                            .offset(x: -36, y: -580)
                        Circle()
                            .fill(Color.purple)
                            .shadow(radius: 4)
                            .frame(width: 25, height: 25)
                            .offset(x: 285, y: -690)
                        Circle()
                            .fill(Color.purple)
                            .shadow(radius: 4)
                            .frame(width: 25, height: 25)
                            .offset(x: 90, y: -910)


                    }
                    .frame(minWidth: 420, idealWidth: 520, maxWidth: .infinity,
                           minHeight: 1050, idealHeight: 1200, maxHeight: .infinity, alignment: .leading)
                }

            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .frame(width: 0.0)
    }
}
