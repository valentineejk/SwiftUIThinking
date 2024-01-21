//
//  AnimationSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 08/10/2023.
//

import SwiftUI

struct AnimationSwiftUIView: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button(action: {
                withAnimation(Animation.easeInOut.repeatCount(5, autoreverses: false)){
                    
                    isAnimated.toggle()
                }
            }, label: {
                Text("Presss")
            })
            Spacer()
            RoundedRectangle(cornerRadius:isAnimated ? 50.0 :  25.0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 250,
                    height: isAnimated ? 100 : 250)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? -300 : 200 )
            
            Spacer()
        }
    }
}

#Preview {
    AnimationSwiftUIView()
}
