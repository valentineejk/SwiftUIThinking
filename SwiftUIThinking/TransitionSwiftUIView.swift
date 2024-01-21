//
//  TransitionSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 18/01/2024.
//

import SwiftUI

struct TransitionSwiftUIView: View {
    @State var showView = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button(action: {
                    showView.toggle()
                }, label: {
                    Text("Button")
                })
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 20)
                    .padding()
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showView ? 1.0 : 0.0)
                    //.transition(.slide)
//                    .transition(AnyTransition.scale.animation(.easeOut))
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))

                    .animation(.easeInOut)
            }
  
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionSwiftUIView()
}
