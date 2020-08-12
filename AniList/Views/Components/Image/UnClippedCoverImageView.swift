//
//  UnClippedCoverImageView.swift
//  AniList
//
//  Created by Kirtan Patel on 8/11/20.
//

import SwiftUI
import KingfisherSwiftUI

struct UnClippedCoverImageView: View {
    
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
                .redacted(reason: .placeholder)
            }
            .cancelOnDisappear(true)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 240)
            .cornerRadius(10.0)
            .animation(.default)
            .contextMenu(/*@START_MENU_TOKEN@*/ContextMenu(menuItems: {
                Text("Menu Item 1")
                Text("Menu Item 2")
                Text("Menu Item 3")
            })/*@END_MENU_TOKEN@*/)
    }
}

struct UnClippedCoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        UnClippedCoverImageView(url: "")
    }
}
