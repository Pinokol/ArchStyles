//
//  Gradient + Extension.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 09.12.2024.
//

import SwiftUI

// фоновый градиент
extension LinearGradient {
    static let greenGradient: LinearGradient = LinearGradient(
        gradient: Gradient(colors: [
            Color(red: 0.816, green: 0.757, blue: 0.6),
            Color(red: 0.325, green: 0.298, blue: 0.2)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
}
