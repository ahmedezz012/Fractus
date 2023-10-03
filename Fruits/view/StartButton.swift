//
//  StartButton.swift
//  Fruits
//
//  Created by Ahmed Ezz on 01/10/2023.
//

import SwiftUI

struct StartButton: View {
    var action: () -> Void
    var body: some View {
        Button(action: action, label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.forward.circle")
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.5))
        })
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(action: {})
    }
}
