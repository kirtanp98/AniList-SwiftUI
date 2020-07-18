//
//  TrendingView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/12/20.
//

import SwiftUI

struct TrendingView: View {
    @State var string = ""
    @State var num = 1
    
    var body: some View {
        VStack {
            MediaView(id: num)
            TextField("hi", text: $string).onChange(of: string) { value in
                num = Int(value) ?? 1
            }
        }
    }
}


struct TrendingView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView()
    }
}
