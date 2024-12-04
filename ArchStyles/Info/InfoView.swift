//
//  InfoView.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 30.11.2024.
//

import SwiftUI

struct InfoView: View {
    
    @Binding var titleOn: Bool
    @Binding var rowHeight: Double
    
    var body: some View {
        NavigationStack {
            List(postsBase) { post in
                NavigationLink(destination: {
                    InfoDetail(post: post)
                }) {
                    InfoRow(post: post, rowHeight: $rowHeight)
                }
                
            }
            .navigationTitle("ArchStyles")
            .toolbar(titleOn ? .visible : .hidden)
            .listStyle(.plain)
        }
    }
}

#Preview {
    InfoView(titleOn: .constant(true), rowHeight: .constant(80))
}

