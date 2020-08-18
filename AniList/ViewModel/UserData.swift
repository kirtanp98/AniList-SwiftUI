//
//  UserData.swift
//  AniList
//
//  Created by Kirtan Patel on 8/17/20.
//

import Foundation

class UserData: ObservableObject {
    @Published var user: User?
    @Published var error: Bool
    @Published var login: Bool
    
    init() {
        error = false
        login = false
        user = nil
        loadData()
    }
    
    func loadData() {
        print("getting current media")
        
        Network.shared.apollo.fetch(query: CurrentUserQuery()) { result in
            switch result {
            case .success(let graphQLResult):
//                self.media = Media(media: graphQLResult.data!.media!)
                self.user = User(user: graphQLResult.data!.viewer!)
                self.login = true
            case .failure(let error):
                self.error = true
                print("Failure! Error: \(error)")
            }
        }
    }
    
}
