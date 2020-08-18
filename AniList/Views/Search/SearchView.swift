//
//  SearchView.swift
//  AniList
//
//  Created by Kirtan Patel on 8/16/20.
//

import SwiftUI

struct SearchView: View {
    
    @State var search = ""
    @ObservedObject var searchMedia: SearchMediaData = SearchMediaData()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    TextField("Search", text: $search)
                        .padding(8.5)
                        .background(Color.gray.opacity(0.15))
                        .cornerRadius(10)
                        .padding()
                        .onChange(of: search) { s in
                            withAnimation {
                                searchMedia.search = search
                                searchMedia.loadData(search)
                            }
                            print(s)
                        }
                }
                ScrollView{
                    LazyVGrid(columns: columns, spacing: 1) {
                        ForEach(searchMedia.mediaList) { media in
                            NavigationLink(destination: LazyView(MediaView(id: media.id, type: media.type!))){
                                HStack {
                                    FormattedCoverImage(url: media.coverImage.url, name: media.title.romaji)
                                    .onAppear {
                                        if media == searchMedia.mediaList.last {
                                            withAnimation {
                                                searchMedia.getAnotherPageDate()
                                            }
                                        }
                                    }
                                }.animation(.default)
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }
                }.simultaneousGesture((DragGesture().onChanged { _ in
                    UIApplication.shared.windows.forEach { $0.endEditing(false) }
                }))
            }.navigationTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchMedia: SearchMediaData())
    }
}
