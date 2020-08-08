//
//  MediaScrollView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/26/20.
//

import SwiftUI

struct MediaScrollView: View {
    
    @ObservedObject var topMedia: TopMediaData
    
    var body: some View {
        if !topMedia.mediaList.isEmpty {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(topMedia.mediaList) { media in
                        VStack(alignment: .center) {
                            NavigationLink(destination: MediaView(id: media.id, type: topMedia.mediaType)){
                                CoverImageView(url: media.coverImage.url)
                            }
                            Text(media.title.romaji)
                                .multilineTextAlignment(.leading)
                                .frame(width: 160)
                            Spacer()
                        }
                        .frame(width: 175)
                    }
                    //TODO : FIX THIS PARAMENTER
                    NavigationLink(destination: MediaGridView(type: topMedia.mediaType, sort: topMedia.mediaSort, name: topMedia.mediaListName)) {
                        Image(systemName: "arrow.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80)
                            .padding(.trailing)
                    }
                }
            }.animation(.default)
        } else {
            ProgressView("Loading")
                .frame(maxWidth: .infinity)
                .frame(height: 240)
                .animation(.default)
        }
    }
}

struct MediaScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MediaScrollView(topMedia: TopMediaData(type: .anime, sort: [.popularity], name: "asd"))
    }
}

