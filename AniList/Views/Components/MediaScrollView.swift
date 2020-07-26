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
                            NavigationLink(destination: MediaView(id: media.id)){
                                CoverImageView(url: media.coverImage.url)
                                    .shadow(color: Color(hexString: media.coverImage.overallColor), radius: 7)
                            }
                            Text(media.title.romaji)
                                .multilineTextAlignment(.leading)
                                .frame(width: 160)
                            Spacer()
                        }.padding()
                    }
                }
            }.animation(.default)
        } else {
            ProgressView("Loading")
                .animation(.default)
        }
    }
}

struct MediaScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MediaScrollView(topMedia: TopMediaData(type: .anime))
    }
}
