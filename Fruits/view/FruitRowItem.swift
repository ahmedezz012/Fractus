//
//  FruitRowItem.swift
//  Fruits
//
//  Created by Ahmed Ezz on 25/09/2023.
//

import SwiftUI

struct FruitRowItem: View {
    var fruit: Fruit
    var body: some View {
        HStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80,alignment: .center)
                .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
            .padding(.leading)
        }
    }
}

struct FruitRowItem_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowItem(fruit: fruits[1])
    }
}
