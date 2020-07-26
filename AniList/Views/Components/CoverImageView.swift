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
                .shadow(radius: 5)
        } else {
            ZStack {
                ProgressView("Loading")
            }
            .frame(width: 168, height: 240)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 2)
            )
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView(url: "https://s4.anilist.co/file/anilistcdn/media/anime/banner/1-T3PJUjFJyRwg.jpg")
    }
}
