//
//  PopOverSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 21/01/2024.
//

import SwiftUI

struct PopOverSwiftUIView: View {
    
    @State var showScreen = false

    var body: some View {
        
        ZStack {
            Color.orange
                .ignoresSafeArea(edges:.all)
//            Text("Hello, World!")
            
            VStack{
                Button(action: {
                    showScreen.toggle()
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        .foregroundStyle(.black)
                        .bold()
                })
                Spacer()
            }
            
            //1
//            .sheet(isPresented: $showScreen, content: {
//                NewScreen()
//            })
            
            
            //2
//            ZStack{
//                if showScreen {
//                    NewScreen( showScreen: $showScreen)
//                        .padding(.top, 50)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            //3
            NewScreen(showScreen: $showScreen)
                .padding(.top, 50)
                .offset(y: showScreen ? 0 : UIScreen.main.bounds.height )
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            
            Color.purple
                .ignoresSafeArea(edges: .all)
            
            Button(action: {
//                dismiss()
                showScreen.toggle()
                    
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
    PopOverSwiftUIView()
}
