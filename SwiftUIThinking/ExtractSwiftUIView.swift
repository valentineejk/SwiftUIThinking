//
//  ExtractSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 17/09/2023.
//

import SwiftUI

struct ExtractSwiftUIView: View {
    
   @State var bg: Color = Color.pink
    
    var body: some View {
        ZStack{
            //background
            bg
                .edgesIgnoringSafeArea(.all)
            contentLayer
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .foregroundColor(.black)
            
            Button {
             btnPressed()
            } label: {
                Text("Click")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                
            }
          
            
        }
    }
    func btnPressed() {
        bg = .brown
    }
}

struct ExtractSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSwiftUIView()
    }
}
