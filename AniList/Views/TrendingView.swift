//
//  TrendingView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/12/20.
//

import SwiftUI

struct TrendingView: View {
    
    @ObservedObject var data = MediaData()
    
    var body: some View {
        VStack {
            if let media = data.media {
                if let bannerImage = media.bannerImage {
                    ImageView(url: bannerImage)
                        .frame(maxWidth: .infinity)
                } else {
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.red)
                }
                HStack{
                    ImageView(url: media.coverImage.url)
                    VStack {
                        Text(media.title.english)
                        Text(media.title.native)
                        Text(media.title.romaji)
                    }
                }
            } else {
                ProgressView("loading")
            }
        }
    }
}


struct TrendingView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView()
    }
}



class MediaData: ObservableObject {
    @Published var media: Media?
//    @Published var loaded: Bool
    
    init() {
        media = nil
//        loaded = false
        print("running loadData")
        loadData()
    }
    
//    func loadData() {
//        Network.shared.apollo.fetch(query: LaunchListQuery()) { result in
//          switch result {
//          case .success(let graphQLResult):
//            for launch in graphQLResult.data!.launches.launches {
//                if launch != nil {
//                    if launch!.site != nil  {
//                        self.sites.append(launch!.site!)
//                    }
//                }
//            }
//
//            print("Success! Result: \(String(describing: self.sites))")
//          case .failure(let error):
//            print("Failure! Error: \(error)")
//          }
//        }
//    }
    func loadData() {
        Network.shared.apollo.fetch(query: GetMediaQuery(id: 1337)) { result in
            switch result {
            case .success(let graphQLResult):
                self.media = Media(media: graphQLResult.data!.media!)
//                self.loaded = true
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
}
