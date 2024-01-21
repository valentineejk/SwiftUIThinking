//
//  initBootCamp.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 15/05/2023.
//

import SwiftUI




struct initBootCamp: View {
    
    let backgrund: Color
    let no: Int
    let title: String
    
    init( no: Int, car: Car) {
        
        
        self.no = no
        if car == .bmw {
            self.backgrund = .blue
            self.title = "Bmw"
        } else {
            self.backgrund = .green
            self.title = "Toyota"
        }

    }
    
    enum Car {
    case bmw
    case toyota
    }
    
    var body: some View {
        VStack {
            Text("\(no)")
                .font(.largeTitle)
                .foregroundColor(.white)
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 100, height: 100)
        .background(backgrund)
        .cornerRadius(20)
    }
}

struct initBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        initBootCamp(no: 5, car: .bmw)
    }
}
