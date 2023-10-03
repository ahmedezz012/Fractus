//
//  OnBoardingview.swift
//  Fruits
//
//  Created by Ahmed Ezz on 24/09/2023.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        ZStack {
            TabView {
                ForEach(fruits[0...5]) { fruit in
                    FruitCardView(fruit: fruit)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 10)
        }
    }
}

struct OnBoardingview_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
