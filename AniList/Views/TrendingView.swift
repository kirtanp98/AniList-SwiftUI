//
//  TrendingView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/12/20.
//

import SwiftUI

struct TrendingView: View {
    
    @ObservedObject var topAnime: TopMediaData = TopMediaData(type: .anime)
    @ObservedObject var topManga: TopMediaData = TopMediaData(type: .manga)
    @State var topAnimeIsExpanded: Bool = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Text("Top Anime")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(topAnime.mediaList) { media in
                                VStack {
                                    NavigationLink(destination: MediaView(id: media.id)){
                                        CoverImageView(url: media.coverImage.url)
                                    }
                                    Text(media.title.romaji)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 160)
                                    Spacer()
                                }.padding()
                            }
                        }
                    }
                    
                    HStack {
                        Text("Top Manga")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(topManga.mediaList) { media in
                                NavigationLink(destination: MediaView(id: media.id)){
                                    VStack{
                                        CoverImageView(url: media.coverImage.url)
                                        Text(media.title.romaji)
                                    }
                                }
                            }
                        }
                    }
                }
            }.navigationTitle("Trending")
        }
    }
}


struct TrendingView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView()
    }
}
