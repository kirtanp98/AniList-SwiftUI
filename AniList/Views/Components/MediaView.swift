//
//  MediaView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/18/20.
//

import SwiftUI

struct MediaView: View {
    
    @ObservedObject var data: MediaData
    
    init(id: Int) {
        data = MediaData(id: id)
    }
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    if let media = data.media {
                        VStack {
                            if let media = data.media {
                                if let bannerImage = media.bannerImage {
                                        BannerImageView(url: bannerImage)
                                            .frame(width: 500)
                                } else {
                                    Rectangle()
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 50)
                                        .foregroundColor(Color(hex: media.coverImage.overallColor))
                                }
                            }
                        }
                        HStack{
                            CoverImageView(url: media.coverImage.url)
                            VStack {
                                Text(media.title.english)
                                Text(media.title.native)
                                Text(media.title.romaji)
                            }
                        }
                    } else {
                        ProgressView("loading")
                    }
                }
            }
        }.navigationBarTitle("", displayMode: .inline)
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView(id: 0)
    }
}
