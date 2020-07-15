//
//  Network.swift
//  AniList
//
//  Created by Kirtan Patel on 7/13/20.
//
import Apollo
import CoreData
import Foundation

class Network {
  static let shared = Network()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://graphql.anilist.co")!)
}
