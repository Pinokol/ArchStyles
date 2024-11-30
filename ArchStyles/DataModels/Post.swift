//
//  Post.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import Foundation
import SwiftUI

struct Post: Identifiable {
    let id: UUID
    let title: String
    let description: String
    let image: Image
}
