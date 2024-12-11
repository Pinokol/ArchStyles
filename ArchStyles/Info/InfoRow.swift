//
//  InfoRow.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import SwiftUI

struct InfoRow: View {
    
    let post: Post
    @Binding var rowHeight: Double
    
    var body: some View {
        HStack() {
            post.image
                .resizable()
                .frame(width: rowHeight, height: rowHeight)
                .clipShape(Circle())
            Text(post.title)
                .font(.system(size: rowHeight/2, weight: .semibold))
        }
    }
}
