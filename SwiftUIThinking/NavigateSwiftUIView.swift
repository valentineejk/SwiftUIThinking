//
//  NavigateSwiftUIView.swift
//  SwiftUIThinking
//
//  Created by Valentineejk on 08/02/2024.
//

import SwiftUI

struct NavigateSwiftUIView: View {
    var body: some View {


                NavigationView{
                    ScrollView {
                        
                        //navigation
                        NavigationLink("Hello new page", destination: NewScreen2())
                        
                        
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")

                    }
                    .navigationTitle("Inboxes")
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading) {
                            Text("Hi")
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            Text("go")
                        }
                    }
        //            .toolbar(.hidden)
                }
            }
        }

        struct NewScreen2: View {
            
            @Environment(\.dismiss) var dismiss
        //    @Binding var showScreen: Bool
            
            var body: some View {
                ZStack(alignment: .topLeading){
                    
                    Color.purple
                        .ignoresSafeArea(edges: .all)
                        .toolbar(.hidden)
        //                .toolbar{
        //                    ToolbarItem(placement: .navigationBarLeading) {
        //                        Button("Back") {
        //                         dismiss()
        //                        }   }}
                    VStack{
                     
                    }

                   
             
                
                }

            }
        }


    


#Preview {
    NavigateSwiftUIView()
}
