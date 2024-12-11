//
//  ContentView.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var cScheme: Int
    
    @AppStorage("titleOn") var titleOn = true
    @AppStorage("rowHeight") var rowHeight: Double = 40.0
    
    var body: some View {
        TabView() {
            InfoView(titleOn: $titleOn, rowHeight: $rowHeight)
                .tabItem {
                    Label("List", systemImage: "info.bubble")
                }
            ArchQuizView()
                .tabItem {
                    Label("ArchQuiz" , systemImage: "building.columns.fill")
                }
            SettingsView(titleOn: $titleOn, rowHeight: $rowHeight, cScheme: $cScheme)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView(cScheme: .constant(2))
}
