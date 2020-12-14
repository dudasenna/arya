//
//  Home.swift
//  Arya
//
//  Created by Eduarda Senna on 10/12/20.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            HStack(alignment: .center, spacing: nil, content: {
                VStack(alignment: .leading, spacing: nil, content: {
                    Text("Olá, \(namePassar!)")
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
                })
                Spacer()
            })
            Spacer()
            VStack(alignment: .center, spacing: nil, content: {
                NavigationLink(
                    destination: CourseView()) {
                    Text("Ciência da\n"+"Computação")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 130.0, height: 130.0)
                        .background(Color.purple)
                        .cornerRadius(100)
                        .shadow(color: .purple, radius: 4)
                }
                .offset(x: 153, y: 158)
                NavigationLink(
                    destination: CourseView()) {
                    Text("Engenheria da\n"+"Computação")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 130.0, height: 130.0)
                        .background(Color.purple)
                        .cornerRadius(100)
                        .shadow(color: .purple, radius: 4)
                }
                .offset(x: -7, y: -110)
                
                NavigationLink(
                    destination: CourseView()) {
                    Text("Matemática")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 100.0, height: 100.0)
                        .background(Color.purple)
                        .cornerRadius(100)
                        .shadow(color: .purple, radius: 4)
                }
                .offset(x: 59, y: 38)
                NavigationLink(
                    destination: CourseView()) {
                    Text("Física")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 90.0, height: 90.0)
                        .background(Color.purple)
                        .cornerRadius(100)
                        .shadow(color: .purple, radius: 4)
                }
                .offset(x: 273, y: -410)
                
                NavigationLink(
                    destination: CourseView()) {
                    Text("Sistema da\n"+"Informação")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 120.0, height: 120.0)
                        .background(Color.purple)
                        .cornerRadius(100)
                        .shadow(color: .purple, radius: 5)
                }
                .offset(x: 275, y: -160)
                
                Circle()
                    .fill(Color.purple)
                    .shadow(color: .purple, radius: 4)
                    .frame(width: 125, height: 125)
                    .offset(x: -75, y: -220)
                Circle()
                    .fill(Color.purple)
                    .shadow(color: .purple, radius: 4)
                    .frame(width: 25, height: 25)
                    .offset(x: 125, y: -290)
                Circle()
                    .fill(Color.purple)
                    .shadow(color: .purple, radius: 4)
                    .frame(width: 25, height: 25)
                    .offset(x: -36, y: -580)
                Circle()
                    .fill(Color.purple)
                    .shadow(color: .purple, radius: 4)
                    .frame(width: 25, height: 25)
                    .offset(x: 285, y: -690)
                Circle()
                    .fill(Color.purple)
                    .shadow(color: .purple, radius: 4)
                    .frame(width: 25, height: 25)
                    .offset(x: 90, y: -910)
            })
        })
        .padding(.leading)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
