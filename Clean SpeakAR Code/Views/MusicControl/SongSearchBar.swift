//
//  SongSearchBar.swift
//  Clean SpeakAR Code
//
//  Created by Daniel Jung on 1/18/21.
//

//import SwiftUI
//
//struct SongSearchBar: View {
//    var body: some View {
//        Button(action: {
//            print("DEBUG: search bar selected")
//        }) {
//            Text("Song Search Bar")
//        }
//    }
//}


import SwiftUI
 
struct SongSearchBar: View {
    @Binding var text: String
 
    @State private var isEditing = false
 
    var body: some View {
        HStack {
 
            TextField("Search ...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                                    .onTapGesture {
                                        self.text = ""
                                        print("DEBUG: cancelling search")
                                    }
                            }
                        }
                    }
                )
//                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                    print("DEBUG: searching songs")
                }
// 
//            if isEditing {
//                Button(action: {
//                    self.isEditing = false
//                    self.text = ""
// 
//                }) {
//                    Text("Cancel")
//                }
//                .padding(.trailing, 10)
//                .transition(.move(edge: .trailing))
//                .animation(.default)
//            }
        }
    }
}
