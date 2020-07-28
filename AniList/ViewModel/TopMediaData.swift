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
    var page: Int
    
    init(type: MediaType) {
        error = false
        mediaList = []
        mediaType = type
        page = 1
        print("running loadData")
        loadData()
    }
    
    func loadData() {
        var tempList:[Media] = []
        Network.shared.apollo.fetch(query: GetTopMediaQuery(page: page, type: mediaType)) { result in
            switch result {
            case .success(let graphQLResult):
                for media in graphQLResult.data!.page!.media! {
                    tempList.append(Media(pageMedia: media!))
                }
                self.mediaList.append(contentsOf: tempList)
            case .failure(let error):
                self.error = true
                print("Failure! Error: \(error)")
            }
            
        }
    }
    
    func getAnotherPageDate() {
        page += 1
        loadData()
    }
}
