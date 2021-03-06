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
        VStack {
            HStack {
                Text(topMedia.mediaListName)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .padding(.leading, 21.0)
                Spacer()
                
                NavigationLink(destination: LazyView(MediaGridView(type: topMedia.mediaType, sort: topMedia.mediaSort,name: topMedia.mediaListName))) {
                    Text("See More")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.trailing)
                }
            }
            if !topMedia.mediaList.isEmpty {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(topMedia.mediaList) { media in
                            if topMedia.mediaList.first == media {
                                NavigationLink(destination: LazyView(MediaView(id: media.id, type: topMedia.mediaType))){
                                    FormattedCoverImage(url: media.coverImage.url, name: media.title.romaji)
                                        .frame(width: 175)
                                        .padding(.leading, 21.0)
                                }.buttonStyle(PlainButtonStyle())

                            } else {
                                NavigationLink(destination: LazyView(MediaView(id: media.id, type: topMedia.mediaType))){
                                    FormattedCoverImage(url: media.coverImage.url, name: media.title.romaji)
                                        .frame(width: 175)
                                }.buttonStyle(PlainButtonStyle())
                            }
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
}

struct MediaScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MediaScrollView(topMedia: TopMediaData(type: .anime, sort: [.popularity], name: "asd"))
    }
}

