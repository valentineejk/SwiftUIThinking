//
//  GridSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 12/06/2023.
//

import SwiftUI

struct GridSwiftUIView: View {
    
    let Columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 20, maximum: 100), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),

    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.purple)
                .frame(height: 400)
            
            LazyVGrid(
                columns: Columns,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders]
            ) {
                
                Section {
                    
                    ForEach(1..<20) { item in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("place 1")
                        .foregroundColor(.purple)
                        .frame(width: 100, height: 60)
                        .background(Color.yellow)
                        .cornerRadius(20)
                    
                    
                }

            }
            
//            LazyVGrid(columns: Columns) {
//
//                ForEach(1..<30) { item in
//                    Rectangle()
//                        .frame(height: 150)
//
//
//                }
//
//
//            }
        }
    }
}

struct GridSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        GridSwiftUIView()
    }
}
