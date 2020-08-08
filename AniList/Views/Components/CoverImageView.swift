//
//  ImageView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/14/20.
//

import SwiftUI
import KingfisherSwiftUI

struct CoverImageView: View {
    
    @State var url: String
    
    var body: some View {
        KFImage(URL(string: url), options: [.transition(.fade(0.5))])
            .placeholder {
                ZStack {
                    ProgressView("Loading")
                }
                .frame(width: 168, height: 240)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 2)
                )
            }
            .cancelOnDisappear(true)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 240)
            .cornerRadius(10.0)
            .animation(.default)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView(url: "https://s4.anilist.co/file/anilistcdn/media/anime/banner/1-T3PJUjFJyRwg.jpg")
    }
}
