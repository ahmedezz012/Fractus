//
//  ContentView.swift
//  Fruits
//
//  Created by Ahmed Ezz on 22/09/2023.
//

import SwiftUI

struct FruitList: View {
    @State private var isSheetShown: Bool = false
    var body: some View {
        NavigationView {
            List { 
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetails(fruit: fruit)) {
                    FruitRowItem(fruit: fruit)
                        .padding(.vertical, 4)
                 }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Fruits")
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarItems(trailing: Button(action: {
                isSheetShown.toggle()
            }) { Image(systemName: "slider.horizontal.3") }
                .sheet(isPresented: $isSheetShown) {
                    SettingsView()
                }
            )
            
        }
       
    }
    
}

struct FruitList_Previews: PreviewProvider {
    static var previews: some View {
        FruitList()
    }
}
