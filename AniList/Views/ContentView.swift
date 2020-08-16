//
//  ContentView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/12/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            TrendingView()
                .tabItem {
                    Image(systemName: "bolt")
                    Text("Discover")
                }
            Text("Anime")
                .tabItem {
                    Image(systemName: "tv")
                    Text("Anime")
                }
            AccountView(authManager: AuthKeyManager())
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Account")
                }
            Text("Manga")
                .tabItem {
                    Image(systemName: "book")
                    Text("Manga")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
        }.accentColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
