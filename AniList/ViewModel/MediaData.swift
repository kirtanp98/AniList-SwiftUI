//
//  Med.swift
//  AniList
//
//  Created by Kirtan Patel on 7/18/20.
//

import Foundation

class MediaData: ObservableObject {
    @Published var media: Media?
    @Published var error: Bool
    var mediaId: Int
    var mediaType: MediaType
    
    init(id: Int, type: MediaType) {
        error = false
        media = nil
        mediaId = id
        mediaType = type
//        loadData()
    }
    
    func loadData() {
        print("getting current media")
        Network.shared.apollo.fetch(query: GetMediaQuery(id: mediaId, type: mediaType, isAdult: false)) { result in
            switch result {
            case .success(let graphQLResult):
                self.media = Media(media: graphQLResult.data!.media!)
            case .failure(let error):
                self.error = true
                print("Failure! Error: \(error)")
            }
        }
    }
    
}
