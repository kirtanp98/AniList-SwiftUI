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
    @State var showDescription: Bool = true
    
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
                            UnClippedCoverImageView(url: media.coverImage.url)
                                .animation(.default)
                                .shadow(radius: 8)
                        }

                        HStack {
                            Spacer()
                            VStack(alignment: .center, spacing: 5.0) {
                                Text("Popularity")
                                Text("\(media.popularity ?? 0)")
                            }
                            Spacer()
                            VStack(alignment: .center, spacing: 5.0) {
                                Text("Average Score")
                                Text("\(media.averageScore ?? 0)")
                            }
                            Spacer()
                            VStack(alignment: .center, spacing: 5.0) {
                                Text("Mean Score")
                                Text("\(media.meanScore ?? 0)")
                            }
                            Spacer()
                            VStack(alignment: .center, spacing: 5.0) {
                                Text("Favorites")
                                Text("\(media.favorites ?? 0)")
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                       
                        Divider()
                        
                        if let description = media.description {
                            DisclosureGroup("Description", isExpanded: $showDescription) {
                                TextUtility.cleanDescription(description)
                                    .padding()
                            }
                            .font(.subheadline)
                            .padding()
                        }
                        
                        VStack {
                            HStack {
                                Text("Relations")
                                    .padding()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(media.relations!.edges) { edge in
                                        NavigationLink(destination: LazyView(MediaView(id: edge.node.id, type: edge.node.type))){
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
        .navigationBarTitle(data.media?.title.romaji ?? "Loading...")
        .accentColor(Color(hexString: data.media?.coverImage.overallColor ?? "#000000"))
        .onAppear{
            data.loadData()
        }

    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView(id: 0, type: .anime)
    }
}
