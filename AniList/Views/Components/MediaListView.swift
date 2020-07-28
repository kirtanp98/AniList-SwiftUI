//
//  MediaListView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/28/20.
//

import SwiftUI

struct MediaListView: View {
    
    @ObservedObject var topMedia: TopMediaData = TopMediaData(type: .anime)
    @State var name: String
    
    var body: some View {
        List {
            ForEach(topMedia.mediaList) { media in
                NavigationLink(destination: MediaView(id: media.id, type: topMedia.mediaType)){
                    HStack {
                        CoverImageView(url: media.coverImage.url)
                            .onAppear {
                                if media == topMedia.mediaList.last {
                                    topMedia.getAnotherPageDate()
                                }
                            }
                        Text(media.title.romaji)
                            .multilineTextAlignment(.leading)
                            .frame(width: 160)
                    }
                }
            }
            HStack {
                Spacer()
                ProgressView("Loading")
                Spacer()
            }
        }
        .animation(.default)
        .navigationTitle(name)
    }
}

struct MediaListView_Previews: PreviewProvider {
    static var previews: some View {
        MediaListView(topMedia: TopMediaData(type: .anime), name: "Top Anime")
    }
}
