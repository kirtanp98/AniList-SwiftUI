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
                    Text("Discover")
                }
            Text("Anime")
                .tabItem {
                    Text("Anime")
                }
            Text("Manga")
                .tabItem {
                    Text("Manga")
                }
            Text("Search")
                .tabItem {
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
