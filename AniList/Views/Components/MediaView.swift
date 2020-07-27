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
    
    init(id: Int, type: MediaType) {
        data = MediaData(id: id, type: type)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    if let media = data.media {
                        ZStack {
                            Rectangle()
                                .frame(maxWidth: .infinity)
                                .frame(height: 280)
                                .foregroundColor(Color(hexString: (data.media?.coverImage.overallColor)!))
                            CoverImageView(url: media.coverImage.url)
                                .animation(.default)
                                .shadow(radius: 8)
                        }

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
        MediaView(id: 0, type: .anime)
    }
}
