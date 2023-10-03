//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Ahmed Ezz on 04/10/2023.
//

import SwiftUI

struct SettingsRowView: View {
    let settingRow: SettingRow
    var body: some View {
        VStack {
            HStack {
                Text(settingRow.label).foregroundColor(.gray)
                Spacer()
                if settingRow.link != nil {
                    Link(destination: URL(string: settingRow.link!)!, label: {
                        Text(settingRow.value).foregroundColor(.gray)
                    })
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    Text(settingRow.value)
                }
            }
            Divider().padding(.vertical, 4)
        }
    }
}

#Preview {
    SettingsRowView(settingRow: SettingRow(label: "website", value: "github", link: "https://www.google.com"))
}
