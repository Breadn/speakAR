//
//  SongSearchBar.swift
//  Clean SpeakAR Code
//
//  Created by Daniel Jung on 1/18/21.
//

import SwiftUI
 
struct SongSearchBar: View {
    @Binding var text: String
 
    @State private var isEditing = false
 
    var body: some View {
        HStack {
 
            TextField("nahhh not gonna even try", text: $text)
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
                                        print("DEBUG: Cancelling search")
                                    }
                            }
                        }
                    }
                )
//                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                    print("DEBUG: Searching songs")
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
