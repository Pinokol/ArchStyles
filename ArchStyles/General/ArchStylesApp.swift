//
//  ArchStylesApp.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import SwiftUI

@main
struct ArchStylesApp: App {
    
    @State var cScheme: Int = 2
    
    var body: some Scene {
        WindowGroup {
            ContentView(cScheme: $cScheme)
                .preferredColorScheme(cScheme > 1 ? nil : (cScheme == 0 ? .light : .dark))
        }
    }
}
