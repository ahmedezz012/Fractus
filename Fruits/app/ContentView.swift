//
//  ContentView.swift
//  Fruits
//
//  Created by Ahmed Ezz on 01/10/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage(.onBoarding) private var showOnBoarding: Bool = true
    var body: some View {
        if !showOnBoarding {
            FruitList()
        } else {
            OnBoarding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
