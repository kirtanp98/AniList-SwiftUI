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


class Media: Identifiable {
    
    var bannerImage: String?
    var id: Int
    var title: MediaTitle
    var coverImage: MediaCover
    var duration: Int?
    
    init(media: GetMediaQuery.Data.Medium) {
        bannerImage = media.bannerImage
        coverImage = MediaCover(cover: media.coverImage!)
        duration = media.duration ?? 0
        id = media.id
        title = MediaTitle(title: media.title!)
    }
    
    init(pageMedia: GetTopMediaQuery.Data.Page.Medium) {
        coverImage = MediaCover(pageCover: pageMedia.coverImage!)
        id = pageMedia.id
        title = MediaTitle(pageTitle: pageMedia.title!)
//        duration = 0
//        bannerImage = nil
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
}
