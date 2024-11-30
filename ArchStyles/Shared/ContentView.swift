//
//  ContentView.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            InfoView()
                .tabItem {
                    Label("List", systemImage: "info.bubble")
                }
            HelloView()
                .tabItem {
                    Label("Hello" , systemImage: "figure")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
