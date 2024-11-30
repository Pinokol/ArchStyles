//
//  InfoDetail.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import SwiftUI

struct InfoDetail: View {
    
    let post: Post
    
    var body: some View {
        ScrollView() {
            VStack(alignment: .center, spacing: 16) {
                Text(post.title)
                    .font(.system(size: 24, weight: .semibold))
                post.image
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 16))
                Text(post.description)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 18, weight: .light))
            }
            .padding(.horizontal, 16)
            
        }
    }
}

#Preview {
    InfoDetail(post: postsBase[0])
}

