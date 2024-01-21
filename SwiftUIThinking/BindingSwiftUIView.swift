//
//  BindingSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 22/09/2023.
//

import SwiftUI

struct BindingSwiftUIView: View {
    @State var bg: Color = Color.red
    var body: some View {
        ZStack{
            bg
                .ignoresSafeArea(.all)
            Btn(bg: $bg)

        }
    }
}

#Preview {
    BindingSwiftUIView()
}

struct Btn: View {
    @Binding var bg: Color
    var body: some View {
        Button(
            action: {
                bg = Color.orange
            },
            label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.black)
                    .cornerRadius(10)
            })
    }
}
