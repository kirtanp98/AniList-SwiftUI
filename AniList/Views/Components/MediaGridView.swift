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
                    NavigationLink(destination: MediaView(id: media.id, type: topMedia.mediaType)){
                        HStack {
                            ZStack{
                                CoverImageView(url: media.coverImage.url)
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
        }.navigationTitle(topMedia.mediaListName)
    }
}

struct MediaGridView_Previews: PreviewProvider {
    static var previews: some View {
        MediaGridView(type: .anime, sort: [.popularity], name: "")
    }
}
