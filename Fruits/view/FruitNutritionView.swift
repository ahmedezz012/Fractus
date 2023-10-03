//
//  FruitNutritionView.swift
//  Fruits
//
//  Created by Ahmed Ezz on 30/09/2023.
//

import SwiftUI

struct FruitNutritionView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]


    var body: some View {
      GroupBox() {
        DisclosureGroup("Nutritional value per 100g") {
            ForEach(0..<nutrients.count,id: \.self) { nutrientItem in
                Divider().padding(.vertical, 2)
                HStack {
                    Group {
                        Image(systemName: "info.circle")
                        Text(nutrients[nutrientItem])
                    }
                    .foregroundColor(fruit.gradientColors[1])
                    .font(.body)
                    .fontWeight(.bold)
                    Spacer(minLength: 25)
                    Text(fruit.nutrition[nutrientItem])
                        .multilineTextAlignment(.trailing)
                }
              }
            }
        }
    }
}

struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionView(fruit: fruits[0])
            .previewLayout(.fixed(width: 370, height: 440))
    }
}
