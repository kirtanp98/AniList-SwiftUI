//
//  ImageView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/14/20.
//

import SwiftUI

struct CoverImageView: View {
    
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
                .frame(height: 240)
                .cornerRadius(10.0)
        } else {
            ProgressView("Loading")
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView(url: "https://s4.anilist.co/file/anilistcdn/media/anime/banner/1-T3PJUjFJyRwg.jpg")
    }
}
