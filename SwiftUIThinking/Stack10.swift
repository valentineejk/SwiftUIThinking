//
//  Stack10.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 08/05/2023.
//

import SwiftUI

struct Stack10: View {
    @State var changeY = false
    @State var value = 1

    var body: some View {
        NavigationView {
            NavigationLink {
                metaTexttF()
            } label: {
                Text("next page")
            }

        }
//        VStack{
//            Toggle(isOn: $changeY){
//                Text("press me")
//
//            }
//
//        Stepper("years of exp..  \(value)", value: $value, in: 1...4)
//
//
//
//        }
        //            .frame(width: 150)

      
    }
    
}

struct Stack10_Previews: PreviewProvider {
    static var previews: some View {
        Stack10()
    }
}
