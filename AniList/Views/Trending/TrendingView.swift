//
//  TrendingView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/12/20.
//

import SwiftUI

struct TrendingView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    HStack {
                        Text("Trending Anime")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Spacer()
                    }
                    MediaScrollView(topMedia: TopMediaData(type: .anime, sort: [.trendingDesc, .popularityDesc], name: "Trending Anime"))
                    
                    HStack {
                        Text("Trending Manga")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Spacer()
                    }
                    MediaScrollView(topMedia: TopMediaData(type: .manga, sort: [.trendingDesc, .popularityDesc], name: "Trending Manga"))
                    
                    HStack {
                        Text("Popular Anime")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Spacer()
                    }
                    
                    MediaScrollView(topMedia: TopMediaData(type: .anime, sort: [.popularityDesc], name: "Popular Anime"))
                    
                    HStack {
                        Text("Popular Manga")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Spacer()
                    }
                    
                    MediaScrollView(topMedia: TopMediaData(type: .manga, sort: [.popularityDesc], name: "Popular Manga"))
                }
            }.navigationTitle("Discover")
        }
    }
}


struct TrendingView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView()
    }
}
