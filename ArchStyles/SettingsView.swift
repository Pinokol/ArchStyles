//
//  SettingsView.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @State var isActive: Bool = false
    @State var slideValue: Float = 0
    @State var date: Date = Date()
    @State var mode: Mode = .auto
    
    var body: some View {
        
        Form {
            
            Section(header: Text("Text")) {
                Text("Text component")
            }
            
            Section(header: Text("title")) {
                Toggle("Toogle status", isOn: $isActive)
                
                Text("Toggle is \(isActive ? "on" : "off")")
            }
            
            Section(header: Text("Slider")) {
                VStack{
                    Slider(value: $slideValue, in: 0...100, step: 1)
                    Text("\(Int(slideValue))")
                    
                }
            }
            
            Section(header: Text("Date Picker")) {
                DatePicker("Select date", selection: $date)
                    .datePickerStyle(GraphicalDatePickerStyle())
            }
            
            Section(header: Text("Picker")) {
                Picker(selection: $mode) {
                    ForEach(Mode.allCases, id: \.self) { mode in
                        Text(mode.rawValue)
                    }
                } label: {
                    Text(mode.rawValue)
                }
                .pickerStyle(InlinePickerStyle())
                .labelsHidden()
            }
        }
        
    }
}

#Preview {
    SettingsView()
}

enum Mode: String, CaseIterable {
    case auto = "Auto"
    case off = "Off"
    case on = "On"
}
