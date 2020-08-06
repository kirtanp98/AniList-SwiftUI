//
//  Media.swift
//  AniList
//
//  Created by Kirtan Patel on 7/13/20.
//

import Foundation


//class Media {
//    //AllFilmsQuery.Data.AllFilm.Film
//    init(media: GetMediaQuery.Data.Medium) {
//        media.coverImage
//    }
//
//}
//
//id = film.id
//label = film.title ?? ""
//value = film.releaseDate ?? ""


class Media: Identifiable, Equatable {
    
    var bannerImage: String?
    var id: Int
    var title: MediaTitle
    var coverImage: MediaCover
    var duration: Int?
    var description: String?
    var format: String?
    var episodes: Int?
    var status: String?
    var averageScore: Int?
    var meanScore: Int?
    var popularity: Int?
    var favorites: Int?
    var relations: MediaRelations?
    
    
    var cleanDescription: String? {
        if let description = description {
            return description.replacingOccurrences(of: "<br>", with: "")
        } else {
            return nil
        }
    }
    
    init(media: GetMediaQuery.Data.Medium) {
        bannerImage = media.bannerImage
        coverImage = MediaCover(cover: media.coverImage!)
        duration = media.duration ?? 0
        id = media.id
        title = MediaTitle(title: media.title!)
        description = media.description
        format = media.format?.rawValue.capitalized
        episodes = media.episodes
        status = media.status?.rawValue.uppercased()
        averageScore = media.averageScore
        meanScore = media.meanScore
        popularity = media.popularity
        favorites = media.favourites
        relations = MediaRelations(relation: media.relations!)
    }
    
    init(pageMedia: GetTopMediaQuery.Data.Page.Medium) {
        coverImage = MediaCover(pageCover: pageMedia.coverImage!)
        id = pageMedia.id
        title = MediaTitle(pageTitle: pageMedia.title!)
//        duration = 0
//        bannerImage = nil
    }
    
    static func == (lhs: Media, rhs: Media) -> Bool {
        return lhs.id == rhs.id
    }
    
}

class MediaCover {
    
    var overallColor: String
    var url: String
    
    init(cover: GetMediaQuery.Data.Medium.CoverImage) {
        overallColor = cover.color ?? ""
        url = cover.extraLarge ?? ""
    }
    
    init(pageCover: GetTopMediaQuery.Data.Page.Medium.CoverImage) {
        overallColor = pageCover.color ?? ""
        url = pageCover.large ?? ""
    }
    
    init(nodeCover: GetMediaQuery.Data.Medium.Relation.Edge.Node.CoverImage) {
        overallColor = ""
        url = nodeCover.large ?? ""
    }
}

class MediaTitle {
    
    var english: String
    var native: String
    var romaji: String
    
    init(title: GetMediaQuery.Data.Medium.Title) {
        english = title.english ?? ""
        native = title.native ?? ""
        romaji = title.romaji ?? ""
    }
    
    init(pageTitle: GetTopMediaQuery.Data.Page.Medium.Title) {
        english = pageTitle.english ?? ""
        native = pageTitle.native ?? ""
        romaji = pageTitle.romaji ?? ""
    }
    
    init(nodeTitle: GetMediaQuery.Data.Medium.Relation.Edge.Node.Title) {
        english = ""
        native = ""
        romaji = nodeTitle.romaji ?? ""
    }
}

class MediaRelations {
    
    var edges: [MediaEdge]
    
    init(relation: GetMediaQuery.Data.Medium.Relation) {
        edges = []
        for edge in relation.edges! {
            edges.append(MediaEdge(edge: edge!))
        }
    }
}

class MediaEdge: Identifiable {
    
    var id: Int
    var type: String
    var node: MediaNode

    init(edge: GetMediaQuery.Data.Medium.Relation.Edge) {
        id = edge.id!
        type = edge.relationType?.rawValue.capitalized ?? "Related"
        node = MediaNode(node: edge.node!)
    }
}

class MediaNode {
    
    var coverImage: MediaCover
    var id: Int
    var title: MediaTitle
    var type: MediaType
    
    init(node: GetMediaQuery.Data.Medium.Relation.Edge.Node) {
        coverImage = MediaCover(nodeCover: node.coverImage!)
        id = node.id
        title = MediaTitle(nodeTitle: node.title!)
        type = node.type!
    }
}
