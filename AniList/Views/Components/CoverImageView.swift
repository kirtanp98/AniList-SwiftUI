//
//  ImageView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/14/20.
//

import SwiftUI
import KingfisherSwiftUI

struct CoverImageView: View {
    
    //    @ObservedObject var imageLoader: ImageFromURL
    @State var url: String
    
    //    init(url: String?) {
    //        imageLoader = ImageFromURL(url: url)
    //    }
    
    var body: some View {
        //        Group {
        //            if let image = imageLoader.image {
        //                KFImage(url)
        //                    .resizable()
        ////                Image(uiImage: image)
        ////                    .renderingMode(.original)
        ////                    .resizable()
        ////                    .aspectRatio(contentMode: .fit)
        ////                    .frame(height: 240)
        ////                    .cornerRadius(10.0)
        //            } else {
        //                ZStack {
        //                    ProgressView("Loading")
        //                }
        //                .frame(width: 168, height: 240)
        //                .overlay(
        //                    RoundedRectangle(cornerRadius: 10)
        //                        .stroke(Color.gray, lineWidth: 2)
        //                )
        //            }
        //        }
        
        KFImage(URL(string: url), options: [.transition(.fade(0.2))])
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
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView(url: "https://s4.anilist.co/file/anilistcdn/media/anime/banner/1-T3PJUjFJyRwg.jpg")
    }
}
