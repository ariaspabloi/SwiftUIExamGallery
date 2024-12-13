//
//  AnimatedText.swift
//  Test1WanderGallery
//
//  Created by Pablo on 11-12-24.
//

import SwiftUI

struct AnimatedText: View {
    @State private var isVisible = false
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 20, weight: .heavy, design: .rounded))
            .opacity(isVisible ? 1 : 0)
            .scaleEffect(isVisible ? 1 : 0.5)
            .animation(.easeOut(duration: 1), value: isVisible)
            .onAppear {
                isVisible = true
            }
    }
}

#Preview {
    AnimatedText(text: "Example test")
}
