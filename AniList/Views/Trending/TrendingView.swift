//
//  TrendingView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/12/20.
//

import SwiftUI

struct TrendingView: View {
        
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Text("Top Anime")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Spacer()
                    }
                    
                    MediaScrollView(topMedia: TopMediaData(type: .anime))
                    
                    HStack {
                        Text("Top Manga")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Spacer()
                    }
                                    
                    MediaScrollView(topMedia: TopMediaData(type: .manga))
                }
            }.navigationTitle("Trending")
        }
    }
}


struct TrendingView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView()
    }
}
