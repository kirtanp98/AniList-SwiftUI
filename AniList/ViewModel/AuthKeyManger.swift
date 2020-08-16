//
//  AuthKeyManger.swift
//  AniList
//
//  Created by Kirtan Patel on 8/16/20.
//

import Foundation

class AuthKeyManager: ObservableObject {
    @Published var currentAuthKey: String?
    @Published var loggedIn: Bool = false
    
    func getCurrentAuthKey() -> String {
        if let key = currentAuthKey {
            return key
        } else {
            return ""
        }
    }
    
    func setCurrentAuthKey(_ authParam: String) {
        let cleanKey = authParam.replacingOccurrences(of: "tbd://#access_token=", with: "")
        let temp = cleanKey.components(separatedBy: "&")
        currentAuthKey = temp[0]
    }
    
}
