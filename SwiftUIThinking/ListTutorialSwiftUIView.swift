//
//  ListTutorialSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 09/02/2024.
//

import SwiftUI

struct ListTutorialSwiftUIView: View {
    
    @State var fruits = [
        "apple",
        "orange",
        "banana",
        "pear"
    ]
    
    @State var cars = [
        "bmw",
        "audi",
        "tesla",
        "volks Wagen"
    ]
    var body: some View {
        NavigationStack {
            List{
                Section {
                    ForEach(fruits, id: \.self){ fr in
                        Text(fr.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                } header: {
                    Text("Fruits")
                }
                
                
                //another
                Section {
                    ForEach(cars, id: \.self){ fr in
                        Text(fr.capitalized)
                    }
                } header: {
                    Text("Cars")
                }
                
                
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Fruits")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    addBtn
                }
                
            }
            //                    .toolbar(.hidden)
        }
        
        .accentColor(.red)

    }
    
    var addBtn: some View{
        Button("Add") {
            add()
        }
    }
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
        
    }
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        fruits.append("coco")
    }
}



#Preview {
    ListTutorialSwiftUIView()
}
