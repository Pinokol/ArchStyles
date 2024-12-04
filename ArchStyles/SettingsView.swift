//
//  SettingsView.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @Binding var titleOn: Bool
    @Binding var rowHeight: Double
    @Binding var cScheme: Int
    
    @State private var isSliding = false
    
    var body: some View {
        
        Form {
            Section(header: Text("App Theme")) {
                Text(colorScheme == .dark ? "Dark Theme enabled" : "Light Theme enabled")
            }
            
            Section(header: Text("Text")) {
                Text("Text component")
            }
            
            Section(header: Text("Info Title Visible")) {
                Toggle("Show title list", isOn: $titleOn)
                if titleOn {
                    Text("Navigation title enabled")
                }
            }
            
            Section(header: Text("Slider")) {
                VStack{
                    Slider(value: $rowHeight, in: 40...100, step: 1) { sliding in
                        self.isSliding = sliding
                    }
                    Text(String(format: "Row height: %.1f", rowHeight))
                    
                    if isSliding {
                        InfoRow(post: postsBase.first!, rowHeight: $rowHeight)
                    }
                }
            }
            
            Section(header: Text("Picker")) {
                Picker(selection: $cScheme) {
                    Text("Light")
                        .tag(0)
                    Text("Dark")
                        .tag(1)
                    Text("Device defined")
                        .tag(2)
                } label: {
                    
                    switch cScheme {
                    case 0: Text("Light")
                    case 1: Text("Dark")
                    default: Text("Device defined")
                    }
                    
                }
                .pickerStyle(InlinePickerStyle())
                .labelsHidden()
            }
        }
        
    }
}

#Preview {
    SettingsView(titleOn: .constant(true), rowHeight: .constant(40), cScheme: .constant(2))
}

enum Mode: String, CaseIterable {
    case auto = "Auto"
    case off = "Off"
    case on = "On"
}
