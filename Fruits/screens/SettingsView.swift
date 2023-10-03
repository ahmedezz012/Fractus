//
//  SettingsView.swift
//  Fruits
//
//  Created by Ahmed Ezz on 01/10/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismissSheet
    
    @AppStorage(.onBoarding) private var onBoardingView: Bool = false
    
    var body: some View {
        NavigationView() {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox (content: {
                        Divider().padding(.vertical, 10)
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(20)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                    }) {
                        SettingsViewLabel(title: "fractus", imageName: "info.circle")
                    }
                    .padding(.horizontal)
                    
                    
                    GroupBox (content: { VStack {
                            ForEach(settings) { setting in
                                SettingsRowView(settingRow: setting)
                            }
                        }
                    }) {
                        SettingsViewLabel(title: "Application", imageName: "apps.iphone").padding(.bottom)
                    }
                    .padding(.horizontal)
                    
                    GroupBox(content: {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle("Restart", isOn: $onBoardingView)
                        
                    }) {
                        SettingsViewLabel(title: "Customization", imageName: "paintbrush")
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                dismissSheet.callAsFunction()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
            }))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
