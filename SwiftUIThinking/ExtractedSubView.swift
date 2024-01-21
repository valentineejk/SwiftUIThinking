//
//  ExtractedSubView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 22/09/2023.
//

import SwiftUI

struct ExtractedSubView: View {
    var body: some View {
        ZStack{
            Color(.yellow)
                .ignoresSafeArea(.all)
            VStack{
                MyItem(world: "Earth", owner: "Lou feng")

                MyItem(world: "Mars", owner: "Hong")
            }

        }
    }
    
    
}

#Preview {
    MyItem(world: "Yu min", owner: "Undying")
}

struct MyItem: View {
    let world: String
    let owner:String
    var body: some View {
        VStack{
            Text("\(world)")
                .foregroundStyle(.white)
            Text(owner)
                .foregroundStyle(.white)
        }
        .padding()
        .background(Color.black)
        .cornerRadius(20)
    }
}
