//
//  MediaView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/18/20.
//

import SwiftUI

struct MediaView: View {
    
    @ObservedObject var data: MediaData
    @State var accentColor: Color = .purple
    
    init(id: Int) {
        data = MediaData(id: id)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    if let media = data.media {
                        if let bannerImage = media.bannerImage {
                            BannerImageView(url: bannerImage)
                        } else {
                            Rectangle()
                                .frame(maxWidth: .infinity)
                                .frame(height: 120)
                                .foregroundColor(Color(hexString: media.coverImage.overallColor))
                        }
                    }
//                    Spacer()
                }.animation(.default)
                VStack {
                    if let media = data.media {
                        Text(media.title.romaji)
                            .font(.title)
                            .bold()
                        HStack{
                            CoverImageView(url: media.coverImage.url)
                                .animation(.default)
                            Spacer()
                            
                            Button(action: {}) {
                                Text("Add to List")
                            }
                        }.padding()

                        DisclosureGroup("Description") {
                            Text(media.cleanDescription ?? "")
                                .padding()
                        }
                        .font(.subheadline)
                        .padding()
                    } else {
                        ProgressView("loading")
                    }
                }
                Spacer()
            }
        }
        .navigationBarTitle(data.media?.title.romaji ?? "oops")
        .accentColor(Color(hexString: (data.media?.coverImage.overallColor)!))

    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView(id: 0)
    }
}
