//
//  HelloView.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 01.12.2024.
//

import SwiftUI

struct HelloView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.blue)
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
        }
    }
    
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
    
}
