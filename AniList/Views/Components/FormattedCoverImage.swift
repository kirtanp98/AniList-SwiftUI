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
        VStack{
            CoverImageView(url: url)
            VStack {
                Text(name)
                    .bold()
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .padding([.leading, .trailing], 5.0)
                Spacer()
            }
            .frame(width: 168, height: 55)
        }
    }
}

struct FormattedCoverImage_Previews: PreviewProvider {
    static var previews: some View {
        FormattedCoverImage(url: "", name: "")
    }
}
