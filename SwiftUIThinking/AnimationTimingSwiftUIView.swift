//
//  AnimationTimingSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 28/12/2023.
//

import SwiftUI

struct AnimationTimingSwiftUIView: View {
    
    @State var isAnimating = false
    
    var body: some View {
        VStack {
            
            Button(action: {
                isAnimating.toggle()
            }, label: {
                Text("Hello, World!")
            })
         RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.5,
                    blendDuration: 1.0
                ))
            
//            RoundedRectangle(cornerRadius: 20)
//                   .frame(width: isAnimating ? 300 : 150, height: 100)
//                   .animation(Animation.easeIn)
//            
//            RoundedRectangle(cornerRadius: 20)
//                   .frame(width: isAnimating ? 300 : 150, height: 100)
//                   .animation(Animation.easeInOut)
//            
//            RoundedRectangle(cornerRadius: 20)
//                   .frame(width: isAnimating ? 300 : 150, height: 100)
//                   .animation(Animation.easeOut)
        }
    }
}

#Preview {
    AnimationTimingSwiftUIView()
}
