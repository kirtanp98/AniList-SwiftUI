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
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Anime")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(topAnime.mediaList) { media in
                                
                                NavigationLink(destination: MediaView(id: media.id)){
                                    VStack{
                                        ImageView(url: media.coverImage.url)
                                        Text(media.title.english)
                                    }
                                }
                                
                            }
                        }
                    }
                    
                    Text("Manga")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(topManga.mediaList) { media in
                                VStack{
                                    ImageView(url: media.coverImage.url)
                                    Text(media.title.english)
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
