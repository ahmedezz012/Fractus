//
//  FruitModel.swift
//  Fruits
//
//  Created by Ahmed Ezz on 24/09/2023.
//

import Foundation
import SwiftUI

struct Fruit : Identifiable{
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
}
