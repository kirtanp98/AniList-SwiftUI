//
//  FormattedCoverImage.swift
//  AniList
//
//  Created by Kirtan Patel on 8/10/20.
//

import SwiftUI

struct FormattedCoverImage: View {
    
    var url: String
    var name: String
    
    var body: some View {
        ZStack{
            CoverImageView(url: url)
            VStack {
                Spacer()
                Text(name)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .foregroundColor(.white)
                    .padding([.leading, .trailing], 5.0)
                    .padding(.bottom)

                //Capsule(style: .circular)
                
            }
            .frame(width: 168, height: 240)
        }
    }
}

struct FormattedCoverImage_Previews: PreviewProvider {
    static var previews: some View {
        FormattedCoverImage(url: "", name: "")
    }
}
