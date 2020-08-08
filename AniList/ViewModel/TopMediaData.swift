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
    @Published var mediaListName: String
    var mediaType: MediaType
    var page: Int
    var mediaSort: [MediaSort]
    
    init(type: MediaType, sort: [MediaSort], name: String) {
        error = false
        mediaList = []
        mediaListName = name
        mediaType = type
        page = 1
        mediaSort = sort
        print("running loadData")
        loadData()
    }
    //["POPULARITY_DESC"]
    func loadData() {
        var tempList:[Media] = []
        Network.shared.apollo.fetch(query: GetTopMediaQuery(page: page, type: mediaType, sort: mediaSort)) { result in
            switch result {
            case .success(let graphQLResult):
                for media in graphQLResult.data!.page!.media! {
                    tempList.append(Media(pageMedia: media!))
                }
                DispatchQueue.main.async {
                    self.mediaList.append(contentsOf: tempList)
                }
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
