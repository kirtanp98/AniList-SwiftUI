//
//  MediaGridView.swift
//  AniList
//
//  Created by Kirtan Patel on 8/7/20.
//

import SwiftUI

struct MediaGridView: View {
    
    @ObservedObject var topMedia: TopMediaData
    
    init(type: MediaType, sort: [MediaSort], name: String) {
        topMedia = TopMediaData(type: type, sort: sort, name: name)
    }
    
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(topMedia.mediaList) { media in
                    NavigationLink(destination: LazyView(MediaView(id: media.id, type: topMedia.mediaType))){
                        HStack {
                            FormattedCoverImage(url: media.coverImage.url, name: media.title.romaji)
                            .onAppear {
                                if media == topMedia.mediaList.last {
                                    withAnimation {
                                        topMedia.getAnotherPageDate()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }.navigationTitle(topMedia.mediaListName)
    }
}

struct MediaGridView_Previews: PreviewProvider {
    static var previews: some View {
        MediaGridView(type: .anime, sort: [.popularity], name: "")
    }
}
