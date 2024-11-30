//
//  InfoRow.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import SwiftUI

struct InfoRow: View {
    
    let post: Post
    
    var body: some View {
        HStack() {
            post.image
                .resizable()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            Text(post.title)
        }
    }
}
