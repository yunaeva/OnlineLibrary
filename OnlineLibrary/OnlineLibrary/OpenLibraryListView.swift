//
//  ContentView.swift
//  OnlineLibrary
//
//  Created by syunaeva on 6/22/24.
//
import SwiftUI

struct OpenLibraryListView: View {
    @State var searchText: String = ""
    
    var body: some View {
        Text("OpenLibrary")
        }
}


struct OpenLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        OpenLibraryListView()
    }
}
