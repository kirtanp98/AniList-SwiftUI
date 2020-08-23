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
                    
                    //TODO: DO CURRENT SEASON ANIME, I have a image on my phone to help get current season
                    
                    MediaScrollView(topMedia: TopMediaData(type: .anime, sort: [.trendingDesc, .popularityDesc], name: "Trending Anime"))
                    
                    MediaScrollView(topMedia: TopMediaData(type: .manga, sort: [.trendingDesc, .popularityDesc], name: "Trending Manga"))
                    
                    MediaScrollView(topMedia: TopMediaData(type: .anime, sort: [.popularityDesc], name: "Popular Anime"))
                    
                    
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
