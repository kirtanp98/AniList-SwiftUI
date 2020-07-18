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
            if let media = data.media {
                if let bannerImage = media.bannerImage {
                    ImageView(url: bannerImage)
                        .frame(maxWidth: .infinity)
                } else {
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.red)
                }
                HStack{
                    ImageView(url: media.coverImage.url)
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
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView(id: 0)
    }
}
