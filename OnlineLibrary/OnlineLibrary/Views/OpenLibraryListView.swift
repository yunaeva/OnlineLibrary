//
//  ContentView.swift
//  OpenLibraryListView
//
//  Created by syunaeva on 6/22/24.
//
import SwiftUI

enum NavigationDestinations: String, CaseIterable, Hashable {
    case Details
    case Profiles
    case Settings
    
}
struct OpenLibraryListView: View {
    @State var searchText: String = ""
    let screens = NavigationDestinations.allCases
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                ForEach(screens, id: \.self) { screen in
                    NavigationLink(value: screen) {
                        Text(screen.rawValue)
                    }
                    
                }
            }
            .navigationTitle("Books View")
            .navigationDestination(for: NavigationDestinations.self) { screen  in
                switch screen {
                case .Details:
                    DetailsScreen()
                case .Profiles:
                    ProfileScreen()
                case .Settings:
                    SettingsScreen()
                }
                
            }
        }
    }
}

struct DetailsScreen: View {
    var body: some View {
        Text("Details Screen")
            .navigationTitle("Details")
    }
}

struct ProfileScreen: View {
    var body: some View {
        Text("Profile Screen")
            .navigationTitle("Profile")
    }
}

struct SettingsScreen: View {
    var body: some View {
        Text("Settings Screen")
            .navigationTitle("Settings")
    }
}


struct OpenLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        OpenLibraryListView()
    }
}
