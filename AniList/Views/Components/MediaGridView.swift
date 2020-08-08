//
//  MediaGridView.swift
//  AniList
//
//  Created by Kirtan Patel on 8/7/20.
//

import SwiftUI

struct MediaGridView: View {
    
    @ObservedObject var topMedia: TopMediaData = TopMediaData(type: .anime)
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(topMedia.mediaList) { media in
                    NavigationLink(destination: MediaView(id: media.id, type: topMedia.mediaType)){
                        HStack {
                            ZStack{
                                CoverImageView(url: media.coverImage.url)
                                    //.shadow(color: Color(hexString: media.coverImage.overallColor), radius: 7)
                                VStack {
                                    Spacer()
                                    Text(media.title.romaji)
                                        .bold()
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.white)
                                        .padding(.bottom)
                                
                                }
                                .frame(width: 168, height: 240)
                            }
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
        }
    }
}

struct MediaGridView_Previews: PreviewProvider {
    static var previews: some View {
        MediaGridView()
    }
}
