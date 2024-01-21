//
//  StateView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 16/09/2023.
//

import SwiftUI

struct StateView: View {
    @State var code = 0
    var body: some View {
        ZStack{
            //background
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            //content
            VStack(spacing: 20) {
                Text("state")
                Text("count: \(code)")
                
                Button {
                    code+=1

                } label: {
                    Text("Add")

                }

                Button {
                    code=0

                } label: {
                    Text("clear")

                }
            }
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
