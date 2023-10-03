//
//  SettingsRowData.swift
//  Fruits
//
//  Created by Ahmed Ezz on 04/10/2023.
//

import Foundation

struct SettingRow: Identifiable {
    let id = UUID()
    let label: String
    let value: String
    var link: String? = nil
}
