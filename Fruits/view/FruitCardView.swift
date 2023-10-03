//
//  FruitCardView.swift
//  Fruits
//
//  Created by Ahmed Ezz on 22/09/2023.
//

import SwiftUI

struct FruitCardView: View {
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    @AppStorage(.onBoarding) private var showOnBoarding: Bool = true
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(isAnimating ? 1: 0.6)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15),
                            radius: 2,x: 2,y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15),
                            radius: 2,x: 2,y: 2)
                
                StartButton(action: {
                    showOnBoarding = false
                })
                .foregroundColor(.white)
                
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity,
                minHeight: 0,maxHeight: .infinity,
                alignment: .center)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruits[2])
    }
}
