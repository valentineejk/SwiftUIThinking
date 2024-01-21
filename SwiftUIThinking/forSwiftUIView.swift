//
//  forSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 30/05/2023.
//

import SwiftUI

struct forSwiftUIView: View {
    var body: some View {
        VStack {
            ForEach(1..<10) { index in
                Text("hi \(index)")
            }
        }
    }
}

struct forSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        forSwiftUIView()
    }
}
