//
//  FruitDetails.swift
//  Fruits
//
//  Created by Ahmed Ezz on 26/09/2023.
//

import SwiftUI

struct FruitDetails: View {
    let fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center,spacing: 20) {
                    FruitDetailsHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .fontWeight(.light)

                        Text("learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        FruitNutritionView(fruit: fruit)
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.horizontal)
                }
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetails_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetails(fruit: fruits[0])
    }
}
