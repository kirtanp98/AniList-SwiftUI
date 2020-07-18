//
//  TopMediaData.swift
//  AniList
//
//  Created by Kirtan Patel on 7/18/20.
//

import Foundation

class TopMediaData: ObservableObject {
    @Published var mediaList: [Media]
    @Published var error: Bool
    var mediaType: MediaType
    
    init(type: MediaType) {
        error = false
        mediaList = []
        mediaType = type
        print("running loadData")
        loadData()
    }
    
    func loadData() {
        Network.shared.apollo.fetch(query: GetTopMediaQuery(page: 1, type: mediaType)) { result in
            switch result {
            case .success(let graphQLResult):
                for media in graphQLResult.data!.page!.media! {
                    self.mediaList.append(Media(pageMedia: media!))
                }
            case .failure(let error):
                self.error = true
                print("Failure! Error: \(error)")
            }
            
        }
    }
}
