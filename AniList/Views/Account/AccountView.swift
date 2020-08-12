//
//  AccountView.swift
//  AniList
//
//  Created by Kirtan Patel on 8/11/20.
//

import SwiftUI
//import KingfisherSwiftUI
//import class Kingfisher.ImageCache

struct AccountView: View {
    
    @State var cache: String = ""
    
    var body: some View {
        VStack{
            Button(action: {
                print("asd")
            }) {
                Text("Login").padding()
            }.background(Color.gray)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
