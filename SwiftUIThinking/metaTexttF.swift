//
//  metaTexttF.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 09/05/2023.
//

import SwiftUI

struct metaTexttF: View {
    @State var theText = ""
    var body: some View {
        Form {
            TextField("enter", text: $theText, onEditingChanged: { status in
                print(status)
            })
            .onSubmit {
                print("done!")
        
            }
                .onChange(of: theText) { newValue in
                  print(newValue)
                }
          
    //        Text("Hello, World!")
            .padding()
        }
    }
}

struct metaTexttF_Previews: PreviewProvider {
    static var previews: some View {
        metaTexttF()
    }
}
