//
//  MediaListView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/28/20.
//

import SwiftUI

struct MediaListView: View {
    
    @ObservedObject var topMedia: TopMediaData = TopMediaData(type: .anime, sort: [.popularity], name: "")
    @State var name: String = ""
    
    init(name: String, type: MediaType, sort: [MediaSort]) {
        self.topMedia = TopMediaData(type: type, sort: sort, name: name)
        self.name = name
    }
    
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
        MediaListView(name: "Top Anime", type: .anime, sort: [.popularityDesc])
    }
}
