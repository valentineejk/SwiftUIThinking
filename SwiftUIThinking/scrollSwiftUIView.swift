//
//  scrollSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 30/05/2023.
//

import SwiftUI

struct scrollSwiftUIView: View {
    var body: some View {
        ScrollView( showsIndicators: false) {
            LazyVStack{
                ForEach(1..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            ForEach(1..<7) { yay in
                                RoundedRectangle(cornerRadius: 10.0)
                                    .frame( width: 200, height: 200)
                                    .shadow(radius: 5)
                                    .padding()
                            }
                          
                        }
                    }
                    
                    
                }
            }
        }
    }
}

struct scrollSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        scrollSwiftUIView()
    }
}
