//
//  LandingPageView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/22/25.
//

import SwiftUI

struct LandingPageView: View {
    @State private var animateBurger: Bool = false
    @State private var animateGradient: Bool = false
    @State private var animateText = false
    @State private var animateExplore: Bool = false
//    @State private var pulse: Bool = false
    var landingPageImage: String = "burger"

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [Color.orange.opacity(0.6), Color.orange.opacity(0.4), Color.orange.opacity(0.2), Color.white],
                               startPoint: animateGradient ? .topLeading : .bottomTrailing,
                               endPoint: animateGradient ? .bottomLeading : .topLeading)
                    .ignoresSafeArea()
//                LinearGradient(colors: [.black.opacity(0.2), .clear],
//                               startPoint: .bottom, endPoint: .top)
//                    .ignoresSafeArea()
                    .animation(.linear(duration: 8).repeatForever(autoreverses: true), value: animateGradient)

                VStack(spacing: 20) {
                    Image(landingPageImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .offset(y: animateBurger ? -20 : 20)
                        .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: animateBurger)

                    Text("Welcome to UniEats")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .opacity(animateText ? 1 : 0) // fade in
                        .offset(y: animateText ? 0 : 15) // slides up a little
                        .animation(.easeOut(duration: 1.5), value: animateText)

                    NavigationLink(destination: HomeView()) {
                        Text("Explore")
                            .font(.title3)
                            .padding()
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
//                            .scaleEffect(pulse ? 1.5 : 1.0)
//                            .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: pulse)
                            //                    .offset(x: animateExplore ? 0 : 20)
                            .overlay(RoundedRectangle(cornerRadius: 24)
                                .fill(.orange.opacity(0.2))
                                .stroke(.black, lineWidth: 2))
                            .opacity(animateText ? 1 : 0) // fade in
                            .offset(y: animateText ? 0 : 20) // slides up a little
                            .animation(.easeOut(duration: 3), value: animateExplore)
                            .shadow(color: .orange.opacity(0.6), radius: animateExplore ? 15 : 5)
                            .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: animateExplore)
                    }
                }
                .onAppear {
                    animateText = true
                    animateBurger = true
                    animateGradient = true
                    animateExplore = true
//                    pulse = true
                }
            }
        }
    }
}

#Preview {
    LandingPageView()
}
