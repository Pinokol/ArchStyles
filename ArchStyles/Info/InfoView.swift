//
//  InfoView.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationStack {
            List(postsBase) { post in
                NavigationLink(destination: {
                    InfoDetail(post: post)
                }) {
                    InfoRow(post: post)
                }
                
            }
        }
    }
}

#Preview {
    InfoView()
}

