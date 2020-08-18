//
//  User.swift
//  AniList
//
//  Created by Kirtan Patel on 8/17/20.
//

import Foundation
import SwiftUI

class User {
    var name: String
    var id: Int
    var image: String
    var colorString: String?
    var about: String
    var color: Color {
        switch colorString {
        case "blue":
            return .blue
        case "purple":
            return .purple
        case "pink":
            return .pink
        case "orange":
            return .orange
        case "red":
            return .red
        case "green":
            return .green
        default:
            return .gray
        }
    }//blue, purple, pink, orange, red, green, gray
    
    init(user: CurrentUserQuery.Data.Viewer){
        name = user.name
        id = user.id
        image = user.avatar!.large ?? ""
        colorString = user.options?.profileColor
        about = user.about ?? ""
    }
    
}
