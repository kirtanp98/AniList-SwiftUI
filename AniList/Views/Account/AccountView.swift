//
//  AccountView.swift
//  AniList
//
//  Created by Kirtan Patel on 8/11/20.
//

import SwiftUI
import KingfisherSwiftUI
import class Kingfisher.ImageCache

struct AccountView: View {
    
    @State var cache: String = ""
    
    var body: some View {
        VStack{
            
            Text(cache)
                .onAppear{
                    ImageCache.default.calculateDiskStorageSize { result in
                        switch result {
                        case .success(let size):
                            cache = "Disk cache size: \(Double(size) / 1024 / 1024) MB"
                        case .failure(let error):
                            print(error)
                        }
                    }
                }
            
            Button(action: {
                ImageCache.default.clearMemoryCache()
                print("asd")
            }) {
                Text("Clear Cache")
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
