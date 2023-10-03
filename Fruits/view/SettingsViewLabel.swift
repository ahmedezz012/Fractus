//
//  SettingsViewLabel.swift
//  Fruits
//
//  Created by Ahmed Ezz on 01/10/2023.
//

import SwiftUI

struct SettingsViewLabel: View {
    
    var title: String
    var imageName: String
    
    var body: some View {
        HStack(spacing: 20) {
            Text(title.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: imageName)
        }
    }
}

struct SettingsViewLabel_Previews: PreviewProvider {
    static var previews: some View {
        SettingsViewLabel(title: "fractus",imageName: "info.circle")
    }
}
