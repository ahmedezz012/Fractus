//
//  FruitDetailsHeaderView.swift
//  Fruits
//
//  Created by Ahmed Ezz on 26/09/2023.
//

import SwiftUI

struct FruitDetailsHeaderView: View {
    @State var fruit: Fruit
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors,
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 20)
        }
        .frame(height: 440)
    }
}

struct FruitDetailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsHeaderView(fruit: fruits[0])
            .previewLayout(.fixed(width: 370, height: 440))
    }
}
