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
                        VStack {
                            NavigationLink(destination: MediaView(id: media.id, type: topMedia.mediaType)){
                                CoverImageView(url: media.coverImage.url)
                                    .shadow(color: Color(hexString: media.coverImage.overallColor), radius: 7)
                            }
                            Text(media.title.romaji)
                                .multilineTextAlignment(.leading)
                                .frame(width: 160)
                            Spacer()
                        }.padding()
                    }
                    
                    NavigationLink(destination: MediaListView(name: "Top Anime")) {
                        Image(systemName: "arrow.right.circle")
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
        MediaScrollView(topMedia: TopMediaData(type: .anime))
    }
}
