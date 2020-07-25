//
//  BannerImageView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/25/20.
//

import SwiftUI

struct BannerImageView: View {
    
    @ObservedObject var imageLoader: ImageFromURL
    
    init(url: String?) {
        imageLoader = ImageFromURL(url: url)
    }
    
    var body: some View {
        if let image = imageLoader.image {
            Image(uiImage: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)

        } else {
            ProgressView("Loading")
        }
    }
}

struct BannerImageView_Previews: PreviewProvider {
    static var previews: some View {
        BannerImageView(url: "https://s4.anilist.co/file/anilistcdn/media/anime/banner/1-T3PJUjFJyRwg.jpg")
    }
}
