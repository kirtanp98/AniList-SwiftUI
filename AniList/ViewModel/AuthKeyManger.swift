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
    
    init() {
        if let key = KeychainWrapper.standard.string(forKey: "authkey") {
            if !key.isEmpty {
                loggedIn = true
                currentAuthKey = key
            }
        }
    }
    
    func getCurrentAuthKey() -> String? {
        if let key = currentAuthKey {
            return key
        } else {
            return nil
        }
    }
    
    func setCurrentAuthKey(_ authParam: String) {
        let cleanKey = authParam.replacingOccurrences(of: "tbd://#access_token=", with: "")
        let temp = cleanKey.components(separatedBy: "&")
        currentAuthKey = temp[0]
        KeychainWrapper.standard.set(currentAuthKey ?? "", forKey: "authkey")
    }
    
    func logout() {
        KeychainWrapper.standard.set("", forKey: "authkey")
        loggedIn = false
        currentAuthKey = nil
    }
    
}
