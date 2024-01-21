//
//  SheetSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 18/01/2024.
//

import SwiftUI

struct SheetSwiftUIView: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(edges: .all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundStyle(Color.black)
                    .bold()
                    .padding(10)
                    .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 10)))
            })
            
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
        }
    }
}


struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading){
            
            Color.purple
                .ignoresSafeArea(edges: .all)
            
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color.purple)
                    .bold()
                    .padding(5)
                    .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 10)))
            })
            .padding()
            
     
        
        }

    }
}

#Preview {
    SheetSwiftUIView()
}
