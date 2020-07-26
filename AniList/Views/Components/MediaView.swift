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
        ScrollView {
            VStack {
                if let media = data.media {
                    if let bannerImage = media.bannerImage {
                        BannerImageView(url: bannerImage)
                            .frame(width: 500)
                    } else {
                        Rectangle()
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .foregroundColor(Color(hexString: media.coverImage.overallColor))
                    }
                }
                Spacer()
            }.animation(.default)
            VStack {
                if let media = data.media {
                    HStack{
                        CoverImageView(url: media.coverImage.url)
                            .animation(.default)
                        VStack {
                            Text(media.title.english)
                            Text(media.title.native)
                            Text(media.title.romaji)
                            Rectangle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(hexString: media.coverImage.overallColor))
                        }
                    }.frame(maxWidth: .infinity)
                } else {
                    ProgressView("loading")
                }
            }
        }.navigationBarTitle("", displayMode: .inline)
        .onAppear{
            print(data.media?.coverImage.overallColor)
        }
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView(id: 0)
    }
}
