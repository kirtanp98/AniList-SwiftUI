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

                        HStack {
                            VStack(alignment: .center) {
                                Text("Popularity")
                                Text("\(media.popularity ?? 0)")
                            }
                            VStack(alignment: .center) {
                                Text("Average Score")
                                Text("\(media.averageScore ?? 0)")
                            }
                            VStack(alignment: .center) {
                                Text("Mean Score")
                                Text("\(media.meanScore ?? 0)")
                            }
                            VStack(alignment: .center) {
                                Text("Favorites")
                                Text("\(media.favorites ?? 0)")
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                       
                        Divider()
                        
                        DisclosureGroup("Description") {
                            Text(media.cleanDescription ?? "")
                                .padding()
                        }
                        .font(.subheadline)
                        .padding()
                        VStack {
                            HStack {
                                Text("Relations")
                                    .padding()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(media.relations!.edges) { edge in
                                        NavigationLink(destination: MediaView(id: edge.node.id, type: edge.node.type)){
                                            VStack {
                                                CoverImageView(url: edge.node.coverImage.url)
                                                Text(edge.type)
                                                Text(edge.node.title.romaji)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: 160)
                                            }.padding()
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        ProgressView("loading")
                    }
                }
                Spacer()
            }
        }
        .navigationBarTitle(data.media?.title.romaji ?? "oops")
        .accentColor(Color(hexString: data.media?.coverImage.overallColor ?? "#000000"))

    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView(id: 0, type: .anime)
    }
}
