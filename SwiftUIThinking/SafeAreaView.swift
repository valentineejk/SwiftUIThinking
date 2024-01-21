//
//  SafeAreaView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 01/07/2023.
//

import SwiftUI

struct SafeAreaView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Hello, World!")
                Text("Hello, World!")

                ForEach(1..<10) { Index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.gray)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
     
        }
        .background(
            Color.brown
                .ignoresSafeArea(edges: .top)
        )
    }
}

struct SafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaView()
    }
}
