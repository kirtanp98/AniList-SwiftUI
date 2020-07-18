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
    
    init(id: Int) {
        error = false
        media = nil
        mediaId = id
        print("running loadData")
        loadData()
    }
    
    func loadData() {
        Network.shared.apollo.fetch(query: GetMediaQuery(id: mediaId)) { result in
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
