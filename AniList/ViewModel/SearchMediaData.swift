//
//  SearchMediaData.swift
//  AniList
//
//  Created by Kirtan Patel on 8/16/20.
//

import Foundation

class SearchMediaData: ObservableObject {
    @Published var mediaList: [Media]
    @Published var error: Bool
    var page: Int
    var search: String
    
    init() {
        error = false
        mediaList = []
        page = 1
        print("running loadData")
        search = ""
        loadData(search)
    }
    func loadData(_ search: String) {
        var tempList:[Media] = []
        Network.shared.apollo.fetch(query: SearchMediaQuery(page: page, search: search)) { result in
            switch result {
            case .success(let graphQLResult):
                self.page = 1
                for media in graphQLResult.data!.page!.media! {
                    tempList.append(Media(searchMedia: media!))
                }
                DispatchQueue.main.async {
                    print("search")
                    self.mediaList = []
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
//        loadData(search)
        var tempList:[Media] = []
        Network.shared.apollo.fetch(query: SearchMediaQuery(page: page, search: search)) { result in
            switch result {
            case .success(let graphQLResult):
                for media in graphQLResult.data!.page!.media! {
                    tempList.append(Media(searchMedia: media!))
                }
                DispatchQueue.main.async {
                    print("search")
                    self.mediaList.append(contentsOf: tempList)
                }
            case .failure(let error):
                self.error = true
                print("Failure! Error: \(error)")
            }

        }
    }
}
