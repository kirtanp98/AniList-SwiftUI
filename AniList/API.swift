// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// Media type enum, anime or manga.
public enum MediaType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Japanese Anime
  case anime
  /// Asian comic
  case manga
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ANIME": self = .anime
      case "MANGA": self = .manga
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .anime: return "ANIME"
      case .manga: return "MANGA"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaType, rhs: MediaType) -> Bool {
    switch (lhs, rhs) {
      case (.anime, .anime): return true
      case (.manga, .manga): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaType] {
    return [
      .anime,
      .manga,
    ]
  }
}

public enum MediaSeason: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Months December to February
  case winter
  /// Months March to May
  case spring
  /// Months June to August
  case summer
  /// Months September to November
  case fall
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "WINTER": self = .winter
      case "SPRING": self = .spring
      case "SUMMER": self = .summer
      case "FALL": self = .fall
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .winter: return "WINTER"
      case .spring: return "SPRING"
      case .summer: return "SUMMER"
      case .fall: return "FALL"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaSeason, rhs: MediaSeason) -> Bool {
    switch (lhs, rhs) {
      case (.winter, .winter): return true
      case (.spring, .spring): return true
      case (.summer, .summer): return true
      case (.fall, .fall): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaSeason] {
    return [
      .winter,
      .spring,
      .summer,
      .fall,
    ]
  }
}

/// The format the media was released in
public enum MediaFormat: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Anime broadcast on television
  case tv
  /// Anime which are under 15 minutes in length and broadcast on television
  case tvShort
  /// Anime movies with a theatrical release
  case movie
  /// Special episodes that have been included in DVD/Blu-ray releases, picture dramas, pilots, etc
  case special
  /// (Original Video Animation) Anime that have been released directly on
  /// DVD/Blu-ray without originally going through a theatrical release or
  /// television broadcast
  case ova
  /// (Original Net Animation) Anime that have been originally released online or are only available through streaming services.
  case ona
  /// Short anime released as a music video
  case music
  /// Professionally published manga with more than one chapter
  case manga
  /// Written books released as a series of light novels
  case novel
  /// Manga with just one chapter
  case oneShot
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "TV": self = .tv
      case "TV_SHORT": self = .tvShort
      case "MOVIE": self = .movie
      case "SPECIAL": self = .special
      case "OVA": self = .ova
      case "ONA": self = .ona
      case "MUSIC": self = .music
      case "MANGA": self = .manga
      case "NOVEL": self = .novel
      case "ONE_SHOT": self = .oneShot
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .tv: return "TV"
      case .tvShort: return "TV_SHORT"
      case .movie: return "MOVIE"
      case .special: return "SPECIAL"
      case .ova: return "OVA"
      case .ona: return "ONA"
      case .music: return "MUSIC"
      case .manga: return "MANGA"
      case .novel: return "NOVEL"
      case .oneShot: return "ONE_SHOT"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaFormat, rhs: MediaFormat) -> Bool {
    switch (lhs, rhs) {
      case (.tv, .tv): return true
      case (.tvShort, .tvShort): return true
      case (.movie, .movie): return true
      case (.special, .special): return true
      case (.ova, .ova): return true
      case (.ona, .ona): return true
      case (.music, .music): return true
      case (.manga, .manga): return true
      case (.novel, .novel): return true
      case (.oneShot, .oneShot): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaFormat] {
    return [
      .tv,
      .tvShort,
      .movie,
      .special,
      .ova,
      .ona,
      .music,
      .manga,
      .novel,
      .oneShot,
    ]
  }
}

/// The current releasing status of the media
public enum MediaStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Has completed and is no longer being released
  case finished
  /// Currently releasing
  case releasing
  /// To be released at a later date
  case notYetReleased
  /// Ended before the work could be finished
  case cancelled
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "FINISHED": self = .finished
      case "RELEASING": self = .releasing
      case "NOT_YET_RELEASED": self = .notYetReleased
      case "CANCELLED": self = .cancelled
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .finished: return "FINISHED"
      case .releasing: return "RELEASING"
      case .notYetReleased: return "NOT_YET_RELEASED"
      case .cancelled: return "CANCELLED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaStatus, rhs: MediaStatus) -> Bool {
    switch (lhs, rhs) {
      case (.finished, .finished): return true
      case (.releasing, .releasing): return true
      case (.notYetReleased, .notYetReleased): return true
      case (.cancelled, .cancelled): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaStatus] {
    return [
      .finished,
      .releasing,
      .notYetReleased,
      .cancelled,
    ]
  }
}

/// Source type the media was adapted from
public enum MediaSource: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// An original production not based of another work
  case original
  /// Asian comic book
  case manga
  /// Written work published in volumes
  case lightNovel
  /// Video game driven primary by text and narrative
  case visualNovel
  /// Video game
  case videoGame
  /// Other
  case other
  /// Version 2 only. Written works not published in volumes
  case novel
  /// Version 2 only. Self-published works
  case doujinshi
  /// Version 2 only. Japanese Anime
  case anime
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ORIGINAL": self = .original
      case "MANGA": self = .manga
      case "LIGHT_NOVEL": self = .lightNovel
      case "VISUAL_NOVEL": self = .visualNovel
      case "VIDEO_GAME": self = .videoGame
      case "OTHER": self = .other
      case "NOVEL": self = .novel
      case "DOUJINSHI": self = .doujinshi
      case "ANIME": self = .anime
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .original: return "ORIGINAL"
      case .manga: return "MANGA"
      case .lightNovel: return "LIGHT_NOVEL"
      case .visualNovel: return "VISUAL_NOVEL"
      case .videoGame: return "VIDEO_GAME"
      case .other: return "OTHER"
      case .novel: return "NOVEL"
      case .doujinshi: return "DOUJINSHI"
      case .anime: return "ANIME"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaSource, rhs: MediaSource) -> Bool {
    switch (lhs, rhs) {
      case (.original, .original): return true
      case (.manga, .manga): return true
      case (.lightNovel, .lightNovel): return true
      case (.visualNovel, .visualNovel): return true
      case (.videoGame, .videoGame): return true
      case (.other, .other): return true
      case (.novel, .novel): return true
      case (.doujinshi, .doujinshi): return true
      case (.anime, .anime): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaSource] {
    return [
      .original,
      .manga,
      .lightNovel,
      .visualNovel,
      .videoGame,
      .other,
      .novel,
      .doujinshi,
      .anime,
    ]
  }
}

/// Type of relation media has to its parent.
public enum MediaRelation: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// An adaption of this media into a different format
  case adaptation
  /// Released before the relation
  case prequel
  /// Released after the relation
  case sequel
  /// The media a side story is from
  case parent
  /// A side story of the parent media
  case sideStory
  /// Shares at least 1 character
  case character
  /// A shortened and summarized version
  case summary
  /// An alternative version of the same media
  case alternative
  /// An alternative version of the media with a different primary focus
  case spinOff
  /// Other
  case other
  /// Version 2 only. The source material the media was adapted from
  case source
  /// Version 2 only.
  case compilation
  /// Version 2 only.
  case contains
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ADAPTATION": self = .adaptation
      case "PREQUEL": self = .prequel
      case "SEQUEL": self = .sequel
      case "PARENT": self = .parent
      case "SIDE_STORY": self = .sideStory
      case "CHARACTER": self = .character
      case "SUMMARY": self = .summary
      case "ALTERNATIVE": self = .alternative
      case "SPIN_OFF": self = .spinOff
      case "OTHER": self = .other
      case "SOURCE": self = .source
      case "COMPILATION": self = .compilation
      case "CONTAINS": self = .contains
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .adaptation: return "ADAPTATION"
      case .prequel: return "PREQUEL"
      case .sequel: return "SEQUEL"
      case .parent: return "PARENT"
      case .sideStory: return "SIDE_STORY"
      case .character: return "CHARACTER"
      case .summary: return "SUMMARY"
      case .alternative: return "ALTERNATIVE"
      case .spinOff: return "SPIN_OFF"
      case .other: return "OTHER"
      case .source: return "SOURCE"
      case .compilation: return "COMPILATION"
      case .contains: return "CONTAINS"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaRelation, rhs: MediaRelation) -> Bool {
    switch (lhs, rhs) {
      case (.adaptation, .adaptation): return true
      case (.prequel, .prequel): return true
      case (.sequel, .sequel): return true
      case (.parent, .parent): return true
      case (.sideStory, .sideStory): return true
      case (.character, .character): return true
      case (.summary, .summary): return true
      case (.alternative, .alternative): return true
      case (.spinOff, .spinOff): return true
      case (.other, .other): return true
      case (.source, .source): return true
      case (.compilation, .compilation): return true
      case (.contains, .contains): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaRelation] {
    return [
      .adaptation,
      .prequel,
      .sequel,
      .parent,
      .sideStory,
      .character,
      .summary,
      .alternative,
      .spinOff,
      .other,
      .source,
      .compilation,
      .contains,
    ]
  }
}

/// The role the character plays in the media
public enum CharacterRole: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// A primary character role in the media
  case main
  /// A supporting character role in the media
  case supporting
  /// A background character in the media
  case background
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "MAIN": self = .main
      case "SUPPORTING": self = .supporting
      case "BACKGROUND": self = .background
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .main: return "MAIN"
      case .supporting: return "SUPPORTING"
      case .background: return "BACKGROUND"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: CharacterRole, rhs: CharacterRole) -> Bool {
    switch (lhs, rhs) {
      case (.main, .main): return true
      case (.supporting, .supporting): return true
      case (.background, .background): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [CharacterRole] {
    return [
      .main,
      .supporting,
      .background,
    ]
  }
}

/// The primary language of the voice actor
public enum StaffLanguage: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Japanese
  case japanese
  /// English
  case english
  /// Korean
  case korean
  /// Italian
  case italian
  /// Spanish
  case spanish
  /// Portuguese
  case portuguese
  /// French
  case french
  /// German
  case german
  /// Hebrew
  case hebrew
  /// Hungarian
  case hungarian
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "JAPANESE": self = .japanese
      case "ENGLISH": self = .english
      case "KOREAN": self = .korean
      case "ITALIAN": self = .italian
      case "SPANISH": self = .spanish
      case "PORTUGUESE": self = .portuguese
      case "FRENCH": self = .french
      case "GERMAN": self = .german
      case "HEBREW": self = .hebrew
      case "HUNGARIAN": self = .hungarian
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .japanese: return "JAPANESE"
      case .english: return "ENGLISH"
      case .korean: return "KOREAN"
      case .italian: return "ITALIAN"
      case .spanish: return "SPANISH"
      case .portuguese: return "PORTUGUESE"
      case .french: return "FRENCH"
      case .german: return "GERMAN"
      case .hebrew: return "HEBREW"
      case .hungarian: return "HUNGARIAN"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: StaffLanguage, rhs: StaffLanguage) -> Bool {
    switch (lhs, rhs) {
      case (.japanese, .japanese): return true
      case (.english, .english): return true
      case (.korean, .korean): return true
      case (.italian, .italian): return true
      case (.spanish, .spanish): return true
      case (.portuguese, .portuguese): return true
      case (.french, .french): return true
      case (.german, .german): return true
      case (.hebrew, .hebrew): return true
      case (.hungarian, .hungarian): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [StaffLanguage] {
    return [
      .japanese,
      .english,
      .korean,
      .italian,
      .spanish,
      .portuguese,
      .french,
      .german,
      .hebrew,
      .hungarian,
    ]
  }
}

/// Recommendation rating enums
public enum RecommendationRating: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case noRating
  case rateUp
  case rateDown
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "NO_RATING": self = .noRating
      case "RATE_UP": self = .rateUp
      case "RATE_DOWN": self = .rateDown
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .noRating: return "NO_RATING"
      case .rateUp: return "RATE_UP"
      case .rateDown: return "RATE_DOWN"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: RecommendationRating, rhs: RecommendationRating) -> Bool {
    switch (lhs, rhs) {
      case (.noRating, .noRating): return true
      case (.rateUp, .rateUp): return true
      case (.rateDown, .rateDown): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [RecommendationRating] {
    return [
      .noRating,
      .rateUp,
      .rateDown,
    ]
  }
}

/// The type of ranking
public enum MediaRankType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Ranking is based on the media's ratings/score
  case rated
  /// Ranking is based on the media's popularity
  case popular
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "RATED": self = .rated
      case "POPULAR": self = .popular
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .rated: return "RATED"
      case .popular: return "POPULAR"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaRankType, rhs: MediaRankType) -> Bool {
    switch (lhs, rhs) {
      case (.rated, .rated): return true
      case (.popular, .popular): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaRankType] {
    return [
      .rated,
      .popular,
    ]
  }
}

/// Media list watching/reading status enum.
public enum MediaListStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Currently watching/reading
  case current
  /// Planning to watch/read
  case planning
  /// Finished watching/reading
  case completed
  /// Stopped watching/reading before completing
  case dropped
  /// Paused watching/reading
  case paused
  /// Re-watching/reading
  case repeating
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CURRENT": self = .current
      case "PLANNING": self = .planning
      case "COMPLETED": self = .completed
      case "DROPPED": self = .dropped
      case "PAUSED": self = .paused
      case "REPEATING": self = .repeating
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .current: return "CURRENT"
      case .planning: return "PLANNING"
      case .completed: return "COMPLETED"
      case .dropped: return "DROPPED"
      case .paused: return "PAUSED"
      case .repeating: return "REPEATING"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaListStatus, rhs: MediaListStatus) -> Bool {
    switch (lhs, rhs) {
      case (.current, .current): return true
      case (.planning, .planning): return true
      case (.completed, .completed): return true
      case (.dropped, .dropped): return true
      case (.paused, .paused): return true
      case (.repeating, .repeating): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaListStatus] {
    return [
      .current,
      .planning,
      .completed,
      .dropped,
      .paused,
      .repeating,
    ]
  }
}

/// Media sort enums
public enum MediaSort: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case id
  case idDesc
  case titleRomaji
  case titleRomajiDesc
  case titleEnglish
  case titleEnglishDesc
  case titleNative
  case titleNativeDesc
  case type
  case typeDesc
  case format
  case formatDesc
  case startDate
  case startDateDesc
  case endDate
  case endDateDesc
  case score
  case scoreDesc
  case popularity
  case popularityDesc
  case trending
  case trendingDesc
  case episodes
  case episodesDesc
  case duration
  case durationDesc
  case status
  case statusDesc
  case chapters
  case chaptersDesc
  case volumes
  case volumesDesc
  case updatedAt
  case updatedAtDesc
  case searchMatch
  case favourites
  case favouritesDesc
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ID": self = .id
      case "ID_DESC": self = .idDesc
      case "TITLE_ROMAJI": self = .titleRomaji
      case "TITLE_ROMAJI_DESC": self = .titleRomajiDesc
      case "TITLE_ENGLISH": self = .titleEnglish
      case "TITLE_ENGLISH_DESC": self = .titleEnglishDesc
      case "TITLE_NATIVE": self = .titleNative
      case "TITLE_NATIVE_DESC": self = .titleNativeDesc
      case "TYPE": self = .type
      case "TYPE_DESC": self = .typeDesc
      case "FORMAT": self = .format
      case "FORMAT_DESC": self = .formatDesc
      case "START_DATE": self = .startDate
      case "START_DATE_DESC": self = .startDateDesc
      case "END_DATE": self = .endDate
      case "END_DATE_DESC": self = .endDateDesc
      case "SCORE": self = .score
      case "SCORE_DESC": self = .scoreDesc
      case "POPULARITY": self = .popularity
      case "POPULARITY_DESC": self = .popularityDesc
      case "TRENDING": self = .trending
      case "TRENDING_DESC": self = .trendingDesc
      case "EPISODES": self = .episodes
      case "EPISODES_DESC": self = .episodesDesc
      case "DURATION": self = .duration
      case "DURATION_DESC": self = .durationDesc
      case "STATUS": self = .status
      case "STATUS_DESC": self = .statusDesc
      case "CHAPTERS": self = .chapters
      case "CHAPTERS_DESC": self = .chaptersDesc
      case "VOLUMES": self = .volumes
      case "VOLUMES_DESC": self = .volumesDesc
      case "UPDATED_AT": self = .updatedAt
      case "UPDATED_AT_DESC": self = .updatedAtDesc
      case "SEARCH_MATCH": self = .searchMatch
      case "FAVOURITES": self = .favourites
      case "FAVOURITES_DESC": self = .favouritesDesc
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .id: return "ID"
      case .idDesc: return "ID_DESC"
      case .titleRomaji: return "TITLE_ROMAJI"
      case .titleRomajiDesc: return "TITLE_ROMAJI_DESC"
      case .titleEnglish: return "TITLE_ENGLISH"
      case .titleEnglishDesc: return "TITLE_ENGLISH_DESC"
      case .titleNative: return "TITLE_NATIVE"
      case .titleNativeDesc: return "TITLE_NATIVE_DESC"
      case .type: return "TYPE"
      case .typeDesc: return "TYPE_DESC"
      case .format: return "FORMAT"
      case .formatDesc: return "FORMAT_DESC"
      case .startDate: return "START_DATE"
      case .startDateDesc: return "START_DATE_DESC"
      case .endDate: return "END_DATE"
      case .endDateDesc: return "END_DATE_DESC"
      case .score: return "SCORE"
      case .scoreDesc: return "SCORE_DESC"
      case .popularity: return "POPULARITY"
      case .popularityDesc: return "POPULARITY_DESC"
      case .trending: return "TRENDING"
      case .trendingDesc: return "TRENDING_DESC"
      case .episodes: return "EPISODES"
      case .episodesDesc: return "EPISODES_DESC"
      case .duration: return "DURATION"
      case .durationDesc: return "DURATION_DESC"
      case .status: return "STATUS"
      case .statusDesc: return "STATUS_DESC"
      case .chapters: return "CHAPTERS"
      case .chaptersDesc: return "CHAPTERS_DESC"
      case .volumes: return "VOLUMES"
      case .volumesDesc: return "VOLUMES_DESC"
      case .updatedAt: return "UPDATED_AT"
      case .updatedAtDesc: return "UPDATED_AT_DESC"
      case .searchMatch: return "SEARCH_MATCH"
      case .favourites: return "FAVOURITES"
      case .favouritesDesc: return "FAVOURITES_DESC"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaSort, rhs: MediaSort) -> Bool {
    switch (lhs, rhs) {
      case (.id, .id): return true
      case (.idDesc, .idDesc): return true
      case (.titleRomaji, .titleRomaji): return true
      case (.titleRomajiDesc, .titleRomajiDesc): return true
      case (.titleEnglish, .titleEnglish): return true
      case (.titleEnglishDesc, .titleEnglishDesc): return true
      case (.titleNative, .titleNative): return true
      case (.titleNativeDesc, .titleNativeDesc): return true
      case (.type, .type): return true
      case (.typeDesc, .typeDesc): return true
      case (.format, .format): return true
      case (.formatDesc, .formatDesc): return true
      case (.startDate, .startDate): return true
      case (.startDateDesc, .startDateDesc): return true
      case (.endDate, .endDate): return true
      case (.endDateDesc, .endDateDesc): return true
      case (.score, .score): return true
      case (.scoreDesc, .scoreDesc): return true
      case (.popularity, .popularity): return true
      case (.popularityDesc, .popularityDesc): return true
      case (.trending, .trending): return true
      case (.trendingDesc, .trendingDesc): return true
      case (.episodes, .episodes): return true
      case (.episodesDesc, .episodesDesc): return true
      case (.duration, .duration): return true
      case (.durationDesc, .durationDesc): return true
      case (.status, .status): return true
      case (.statusDesc, .statusDesc): return true
      case (.chapters, .chapters): return true
      case (.chaptersDesc, .chaptersDesc): return true
      case (.volumes, .volumes): return true
      case (.volumesDesc, .volumesDesc): return true
      case (.updatedAt, .updatedAt): return true
      case (.updatedAtDesc, .updatedAtDesc): return true
      case (.searchMatch, .searchMatch): return true
      case (.favourites, .favourites): return true
      case (.favouritesDesc, .favouritesDesc): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaSort] {
    return [
      .id,
      .idDesc,
      .titleRomaji,
      .titleRomajiDesc,
      .titleEnglish,
      .titleEnglishDesc,
      .titleNative,
      .titleNativeDesc,
      .type,
      .typeDesc,
      .format,
      .formatDesc,
      .startDate,
      .startDateDesc,
      .endDate,
      .endDateDesc,
      .score,
      .scoreDesc,
      .popularity,
      .popularityDesc,
      .trending,
      .trendingDesc,
      .episodes,
      .episodesDesc,
      .duration,
      .durationDesc,
      .status,
      .statusDesc,
      .chapters,
      .chaptersDesc,
      .volumes,
      .volumesDesc,
      .updatedAt,
      .updatedAtDesc,
      .searchMatch,
      .favourites,
      .favouritesDesc,
    ]
  }
}

public final class GetMediaQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getMedia($id: Int, $type: MediaType, $isAdult: Boolean) {
      Media(id: $id, type: $type, isAdult: $isAdult) {
        __typename
        id
        title {
          __typename
          userPreferred
          romaji
          english
          native
        }
        coverImage {
          __typename
          color
          extraLarge
        }
        bannerImage
        startDate {
          __typename
          year
          month
          day
        }
        endDate {
          __typename
          year
          month
          day
        }
        description
        season
        seasonYear
        type
        format
        status
        episodes
        duration
        chapters
        volumes
        genres
        synonyms
        source(version: 2)
        isAdult
        isLocked
        meanScore
        averageScore
        popularity
        favourites
        hashtag
        countryOfOrigin
        isLicensed
        isFavourite
        isRecommendationBlocked
        nextAiringEpisode {
          __typename
          airingAt
          timeUntilAiring
          episode
        }
        relations {
          __typename
          edges {
            __typename
            id
            relationType(version: 2)
            node {
              __typename
              id
              title {
                __typename
                romaji
              }
              format
              type
              status
              bannerImage
              coverImage {
                __typename
                large
              }
            }
          }
        }
        characterPreview: characters(perPage: 6, sort: [ROLE, ID]) {
          __typename
          edges {
            __typename
            id
            role
            voiceActors(language: JAPANESE) {
              __typename
              id
              name {
                __typename
                full
              }
              language
              image {
                __typename
                large
              }
            }
            node {
              __typename
              id
              name {
                __typename
                full
              }
              image {
                __typename
                large
              }
            }
          }
        }
        staffPreview: staff(perPage: 8) {
          __typename
          edges {
            __typename
            id
            role
            node {
              __typename
              id
              name {
                __typename
                full
              }
              language
              image {
                __typename
                large
              }
            }
          }
        }
        studios {
          __typename
          edges {
            __typename
            isMain
            node {
              __typename
              id
              name
            }
          }
        }
        reviewPreview: reviews(perPage: 2, sort: [RATING_DESC, ID]) {
          __typename
          pageInfo {
            __typename
            total
          }
          nodes {
            __typename
            id
            summary
            rating
            ratingAmount
            user {
              __typename
              id
              name
              avatar {
                __typename
                large
              }
            }
          }
        }
        recommendations(perPage: 7, sort: [RATING_DESC, ID]) {
          __typename
          pageInfo {
            __typename
            total
          }
          nodes {
            __typename
            id
            rating
            userRating
            mediaRecommendation {
              __typename
              id
              title {
                __typename
                userPreferred
              }
              format
              type
              status
              bannerImage
              coverImage {
                __typename
                large
              }
            }
            user {
              __typename
              id
              name
              avatar {
                __typename
                large
              }
            }
          }
        }
        externalLinks {
          __typename
          site
          url
        }
        streamingEpisodes {
          __typename
          site
          title
          thumbnail
          url
        }
        trailer {
          __typename
          id
          site
        }
        rankings {
          __typename
          id
          rank
          type
          format
          year
          season
          allTime
          context
        }
        tags {
          __typename
          id
          name
          description
          rank
          isMediaSpoiler
          isGeneralSpoiler
        }
        mediaListEntry {
          __typename
          id
          status
          score
        }
        stats {
          __typename
          statusDistribution {
            __typename
            status
            amount
          }
          scoreDistribution {
            __typename
            score
            amount
          }
        }
      }
    }
    """

  public let operationName: String = "getMedia"

  public var id: Int?
  public var type: MediaType?
  public var isAdult: Bool?

  public init(id: Int? = nil, type: MediaType? = nil, isAdult: Bool? = nil) {
    self.id = id
    self.type = type
    self.isAdult = isAdult
  }

  public var variables: GraphQLMap? {
    return ["id": id, "type": type, "isAdult": isAdult]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Media", arguments: ["id": GraphQLVariable("id"), "type": GraphQLVariable("type"), "isAdult": GraphQLVariable("isAdult")], type: .object(Medium.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(media: Medium? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Media": media.flatMap { (value: Medium) -> ResultMap in value.resultMap }])
    }

    /// Media query
    public var media: Medium? {
      get {
        return (resultMap["Media"] as? ResultMap).flatMap { Medium(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Media")
      }
    }

    public struct Medium: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Media"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("title", type: .object(Title.selections)),
          GraphQLField("coverImage", type: .object(CoverImage.selections)),
          GraphQLField("bannerImage", type: .scalar(String.self)),
          GraphQLField("startDate", type: .object(StartDate.selections)),
          GraphQLField("endDate", type: .object(EndDate.selections)),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("season", type: .scalar(MediaSeason.self)),
          GraphQLField("seasonYear", type: .scalar(Int.self)),
          GraphQLField("type", type: .scalar(MediaType.self)),
          GraphQLField("format", type: .scalar(MediaFormat.self)),
          GraphQLField("status", type: .scalar(MediaStatus.self)),
          GraphQLField("episodes", type: .scalar(Int.self)),
          GraphQLField("duration", type: .scalar(Int.self)),
          GraphQLField("chapters", type: .scalar(Int.self)),
          GraphQLField("volumes", type: .scalar(Int.self)),
          GraphQLField("genres", type: .list(.scalar(String.self))),
          GraphQLField("synonyms", type: .list(.scalar(String.self))),
          GraphQLField("source", arguments: ["version": 2], type: .scalar(MediaSource.self)),
          GraphQLField("isAdult", type: .scalar(Bool.self)),
          GraphQLField("isLocked", type: .scalar(Bool.self)),
          GraphQLField("meanScore", type: .scalar(Int.self)),
          GraphQLField("averageScore", type: .scalar(Int.self)),
          GraphQLField("popularity", type: .scalar(Int.self)),
          GraphQLField("favourites", type: .scalar(Int.self)),
          GraphQLField("hashtag", type: .scalar(String.self)),
          GraphQLField("countryOfOrigin", type: .scalar(String.self)),
          GraphQLField("isLicensed", type: .scalar(Bool.self)),
          GraphQLField("isFavourite", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("isRecommendationBlocked", type: .scalar(Bool.self)),
          GraphQLField("nextAiringEpisode", type: .object(NextAiringEpisode.selections)),
          GraphQLField("relations", type: .object(Relation.selections)),
          GraphQLField("characters", alias: "characterPreview", arguments: ["perPage": 6, "sort": ["ROLE", "ID"]], type: .object(CharacterPreview.selections)),
          GraphQLField("staff", alias: "staffPreview", arguments: ["perPage": 8], type: .object(StaffPreview.selections)),
          GraphQLField("studios", type: .object(Studio.selections)),
          GraphQLField("reviews", alias: "reviewPreview", arguments: ["perPage": 2, "sort": ["RATING_DESC", "ID"]], type: .object(ReviewPreview.selections)),
          GraphQLField("recommendations", arguments: ["perPage": 7, "sort": ["RATING_DESC", "ID"]], type: .object(Recommendation.selections)),
          GraphQLField("externalLinks", type: .list(.object(ExternalLink.selections))),
          GraphQLField("streamingEpisodes", type: .list(.object(StreamingEpisode.selections))),
          GraphQLField("trailer", type: .object(Trailer.selections)),
          GraphQLField("rankings", type: .list(.object(Ranking.selections))),
          GraphQLField("tags", type: .list(.object(Tag.selections))),
          GraphQLField("mediaListEntry", type: .object(MediaListEntry.selections)),
          GraphQLField("stats", type: .object(Stat.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, title: Title? = nil, coverImage: CoverImage? = nil, bannerImage: String? = nil, startDate: StartDate? = nil, endDate: EndDate? = nil, description: String? = nil, season: MediaSeason? = nil, seasonYear: Int? = nil, type: MediaType? = nil, format: MediaFormat? = nil, status: MediaStatus? = nil, episodes: Int? = nil, duration: Int? = nil, chapters: Int? = nil, volumes: Int? = nil, genres: [String?]? = nil, synonyms: [String?]? = nil, source: MediaSource? = nil, isAdult: Bool? = nil, isLocked: Bool? = nil, meanScore: Int? = nil, averageScore: Int? = nil, popularity: Int? = nil, favourites: Int? = nil, hashtag: String? = nil, countryOfOrigin: String? = nil, isLicensed: Bool? = nil, isFavourite: Bool, isRecommendationBlocked: Bool? = nil, nextAiringEpisode: NextAiringEpisode? = nil, relations: Relation? = nil, characterPreview: CharacterPreview? = nil, staffPreview: StaffPreview? = nil, studios: Studio? = nil, reviewPreview: ReviewPreview? = nil, recommendations: Recommendation? = nil, externalLinks: [ExternalLink?]? = nil, streamingEpisodes: [StreamingEpisode?]? = nil, trailer: Trailer? = nil, rankings: [Ranking?]? = nil, tags: [Tag?]? = nil, mediaListEntry: MediaListEntry? = nil, stats: Stat? = nil) {
        self.init(unsafeResultMap: ["__typename": "Media", "id": id, "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }, "coverImage": coverImage.flatMap { (value: CoverImage) -> ResultMap in value.resultMap }, "bannerImage": bannerImage, "startDate": startDate.flatMap { (value: StartDate) -> ResultMap in value.resultMap }, "endDate": endDate.flatMap { (value: EndDate) -> ResultMap in value.resultMap }, "description": description, "season": season, "seasonYear": seasonYear, "type": type, "format": format, "status": status, "episodes": episodes, "duration": duration, "chapters": chapters, "volumes": volumes, "genres": genres, "synonyms": synonyms, "source": source, "isAdult": isAdult, "isLocked": isLocked, "meanScore": meanScore, "averageScore": averageScore, "popularity": popularity, "favourites": favourites, "hashtag": hashtag, "countryOfOrigin": countryOfOrigin, "isLicensed": isLicensed, "isFavourite": isFavourite, "isRecommendationBlocked": isRecommendationBlocked, "nextAiringEpisode": nextAiringEpisode.flatMap { (value: NextAiringEpisode) -> ResultMap in value.resultMap }, "relations": relations.flatMap { (value: Relation) -> ResultMap in value.resultMap }, "characterPreview": characterPreview.flatMap { (value: CharacterPreview) -> ResultMap in value.resultMap }, "staffPreview": staffPreview.flatMap { (value: StaffPreview) -> ResultMap in value.resultMap }, "studios": studios.flatMap { (value: Studio) -> ResultMap in value.resultMap }, "reviewPreview": reviewPreview.flatMap { (value: ReviewPreview) -> ResultMap in value.resultMap }, "recommendations": recommendations.flatMap { (value: Recommendation) -> ResultMap in value.resultMap }, "externalLinks": externalLinks.flatMap { (value: [ExternalLink?]) -> [ResultMap?] in value.map { (value: ExternalLink?) -> ResultMap? in value.flatMap { (value: ExternalLink) -> ResultMap in value.resultMap } } }, "streamingEpisodes": streamingEpisodes.flatMap { (value: [StreamingEpisode?]) -> [ResultMap?] in value.map { (value: StreamingEpisode?) -> ResultMap? in value.flatMap { (value: StreamingEpisode) -> ResultMap in value.resultMap } } }, "trailer": trailer.flatMap { (value: Trailer) -> ResultMap in value.resultMap }, "rankings": rankings.flatMap { (value: [Ranking?]) -> [ResultMap?] in value.map { (value: Ranking?) -> ResultMap? in value.flatMap { (value: Ranking) -> ResultMap in value.resultMap } } }, "tags": tags.flatMap { (value: [Tag?]) -> [ResultMap?] in value.map { (value: Tag?) -> ResultMap? in value.flatMap { (value: Tag) -> ResultMap in value.resultMap } } }, "mediaListEntry": mediaListEntry.flatMap { (value: MediaListEntry) -> ResultMap in value.resultMap }, "stats": stats.flatMap { (value: Stat) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The id of the media
      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The official titles of the media in various languages
      public var title: Title? {
        get {
          return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "title")
        }
      }

      /// The cover images of the media
      public var coverImage: CoverImage? {
        get {
          return (resultMap["coverImage"] as? ResultMap).flatMap { CoverImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "coverImage")
        }
      }

      /// The banner image of the media
      public var bannerImage: String? {
        get {
          return resultMap["bannerImage"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "bannerImage")
        }
      }

      /// The first official release date of the media
      public var startDate: StartDate? {
        get {
          return (resultMap["startDate"] as? ResultMap).flatMap { StartDate(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "startDate")
        }
      }

      /// The last official release date of the media
      public var endDate: EndDate? {
        get {
          return (resultMap["endDate"] as? ResultMap).flatMap { EndDate(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "endDate")
        }
      }

      /// Short description of the media's story and characters
      public var description: String? {
        get {
          return resultMap["description"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      /// The season the media was initially released in
      public var season: MediaSeason? {
        get {
          return resultMap["season"] as? MediaSeason
        }
        set {
          resultMap.updateValue(newValue, forKey: "season")
        }
      }

      /// The season year the media was initially released in
      public var seasonYear: Int? {
        get {
          return resultMap["seasonYear"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "seasonYear")
        }
      }

      /// The type of the media; anime or manga
      public var type: MediaType? {
        get {
          return resultMap["type"] as? MediaType
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      /// The format the media was released in
      public var format: MediaFormat? {
        get {
          return resultMap["format"] as? MediaFormat
        }
        set {
          resultMap.updateValue(newValue, forKey: "format")
        }
      }

      /// The current releasing status of the media
      public var status: MediaStatus? {
        get {
          return resultMap["status"] as? MediaStatus
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      /// The amount of episodes the anime has when complete
      public var episodes: Int? {
        get {
          return resultMap["episodes"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "episodes")
        }
      }

      /// The general length of each anime episode in minutes
      public var duration: Int? {
        get {
          return resultMap["duration"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "duration")
        }
      }

      /// The amount of chapters the manga has when complete
      public var chapters: Int? {
        get {
          return resultMap["chapters"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "chapters")
        }
      }

      /// The amount of volumes the manga has when complete
      public var volumes: Int? {
        get {
          return resultMap["volumes"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "volumes")
        }
      }

      /// The genres of the media
      public var genres: [String?]? {
        get {
          return resultMap["genres"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "genres")
        }
      }

      /// Alternative titles of the media
      public var synonyms: [String?]? {
        get {
          return resultMap["synonyms"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "synonyms")
        }
      }

      /// Source type the media was adapted from.
      public var source: MediaSource? {
        get {
          return resultMap["source"] as? MediaSource
        }
        set {
          resultMap.updateValue(newValue, forKey: "source")
        }
      }

      /// If the media is intended only for 18+ adult audiences
      public var isAdult: Bool? {
        get {
          return resultMap["isAdult"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isAdult")
        }
      }

      /// Locked media may not be added to lists our favorited. This may be due to the entry pending for deletion or other reasons.
      public var isLocked: Bool? {
        get {
          return resultMap["isLocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isLocked")
        }
      }

      /// Mean score of all the user's scores of the media
      public var meanScore: Int? {
        get {
          return resultMap["meanScore"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "meanScore")
        }
      }

      /// A weighted average score of all the user's scores of the media
      public var averageScore: Int? {
        get {
          return resultMap["averageScore"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "averageScore")
        }
      }

      /// The number of users with the media on their list
      public var popularity: Int? {
        get {
          return resultMap["popularity"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "popularity")
        }
      }

      /// The amount of user's who have favourited the media
      public var favourites: Int? {
        get {
          return resultMap["favourites"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "favourites")
        }
      }

      /// Official Twitter hashtags for the media
      public var hashtag: String? {
        get {
          return resultMap["hashtag"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "hashtag")
        }
      }

      /// Where the media was created. (ISO 3166-1 alpha-2)
      public var countryOfOrigin: String? {
        get {
          return resultMap["countryOfOrigin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "countryOfOrigin")
        }
      }

      /// If the media is officially licensed or a self-published doujin release
      public var isLicensed: Bool? {
        get {
          return resultMap["isLicensed"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isLicensed")
        }
      }

      /// If the media is marked as favourite by the current authenticated user
      public var isFavourite: Bool {
        get {
          return resultMap["isFavourite"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isFavourite")
        }
      }

      /// If the media is blocked from being recommended to/from
      public var isRecommendationBlocked: Bool? {
        get {
          return resultMap["isRecommendationBlocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isRecommendationBlocked")
        }
      }

      /// The media's next episode airing schedule
      public var nextAiringEpisode: NextAiringEpisode? {
        get {
          return (resultMap["nextAiringEpisode"] as? ResultMap).flatMap { NextAiringEpisode(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "nextAiringEpisode")
        }
      }

      /// Other media in the same or connecting franchise
      public var relations: Relation? {
        get {
          return (resultMap["relations"] as? ResultMap).flatMap { Relation(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "relations")
        }
      }

      /// The characters in the media
      public var characterPreview: CharacterPreview? {
        get {
          return (resultMap["characterPreview"] as? ResultMap).flatMap { CharacterPreview(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "characterPreview")
        }
      }

      /// The staff who produced the media
      public var staffPreview: StaffPreview? {
        get {
          return (resultMap["staffPreview"] as? ResultMap).flatMap { StaffPreview(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "staffPreview")
        }
      }

      /// The companies who produced the media
      public var studios: Studio? {
        get {
          return (resultMap["studios"] as? ResultMap).flatMap { Studio(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "studios")
        }
      }

      /// User reviews of the media
      public var reviewPreview: ReviewPreview? {
        get {
          return (resultMap["reviewPreview"] as? ResultMap).flatMap { ReviewPreview(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "reviewPreview")
        }
      }

      /// User recommendations for similar media
      public var recommendations: Recommendation? {
        get {
          return (resultMap["recommendations"] as? ResultMap).flatMap { Recommendation(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "recommendations")
        }
      }

      /// External links to another site related to the media
      public var externalLinks: [ExternalLink?]? {
        get {
          return (resultMap["externalLinks"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ExternalLink?] in value.map { (value: ResultMap?) -> ExternalLink? in value.flatMap { (value: ResultMap) -> ExternalLink in ExternalLink(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [ExternalLink?]) -> [ResultMap?] in value.map { (value: ExternalLink?) -> ResultMap? in value.flatMap { (value: ExternalLink) -> ResultMap in value.resultMap } } }, forKey: "externalLinks")
        }
      }

      /// Data and links to legal streaming episodes on external sites
      public var streamingEpisodes: [StreamingEpisode?]? {
        get {
          return (resultMap["streamingEpisodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [StreamingEpisode?] in value.map { (value: ResultMap?) -> StreamingEpisode? in value.flatMap { (value: ResultMap) -> StreamingEpisode in StreamingEpisode(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [StreamingEpisode?]) -> [ResultMap?] in value.map { (value: StreamingEpisode?) -> ResultMap? in value.flatMap { (value: StreamingEpisode) -> ResultMap in value.resultMap } } }, forKey: "streamingEpisodes")
        }
      }

      /// Media trailer or advertisement
      public var trailer: Trailer? {
        get {
          return (resultMap["trailer"] as? ResultMap).flatMap { Trailer(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "trailer")
        }
      }

      /// The ranking of the media in a particular time span and format compared to other media
      public var rankings: [Ranking?]? {
        get {
          return (resultMap["rankings"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Ranking?] in value.map { (value: ResultMap?) -> Ranking? in value.flatMap { (value: ResultMap) -> Ranking in Ranking(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Ranking?]) -> [ResultMap?] in value.map { (value: Ranking?) -> ResultMap? in value.flatMap { (value: Ranking) -> ResultMap in value.resultMap } } }, forKey: "rankings")
        }
      }

      /// List of tags that describes elements and themes of the media
      public var tags: [Tag?]? {
        get {
          return (resultMap["tags"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Tag?] in value.map { (value: ResultMap?) -> Tag? in value.flatMap { (value: ResultMap) -> Tag in Tag(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Tag?]) -> [ResultMap?] in value.map { (value: Tag?) -> ResultMap? in value.flatMap { (value: Tag) -> ResultMap in value.resultMap } } }, forKey: "tags")
        }
      }

      /// The authenticated user's media list entry for the media
      public var mediaListEntry: MediaListEntry? {
        get {
          return (resultMap["mediaListEntry"] as? ResultMap).flatMap { MediaListEntry(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "mediaListEntry")
        }
      }

      public var stats: Stat? {
        get {
          return (resultMap["stats"] as? ResultMap).flatMap { Stat(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "stats")
        }
      }

      public struct Title: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaTitle"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("userPreferred", type: .scalar(String.self)),
            GraphQLField("romaji", type: .scalar(String.self)),
            GraphQLField("english", type: .scalar(String.self)),
            GraphQLField("native", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(userPreferred: String? = nil, romaji: String? = nil, english: String? = nil, native: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaTitle", "userPreferred": userPreferred, "romaji": romaji, "english": english, "native": native])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The currently authenticated users preferred title language. Default romaji for non-authenticated
        public var userPreferred: String? {
          get {
            return resultMap["userPreferred"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userPreferred")
          }
        }

        /// The romanization of the native language title
        public var romaji: String? {
          get {
            return resultMap["romaji"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "romaji")
          }
        }

        /// The official english title
        public var english: String? {
          get {
            return resultMap["english"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "english")
          }
        }

        /// Official title in it's native language
        public var native: String? {
          get {
            return resultMap["native"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "native")
          }
        }
      }

      public struct CoverImage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaCoverImage"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("color", type: .scalar(String.self)),
            GraphQLField("extraLarge", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(color: String? = nil, extraLarge: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaCoverImage", "color": color, "extraLarge": extraLarge])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Average #hex color of cover image
        public var color: String? {
          get {
            return resultMap["color"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "color")
          }
        }

        /// The cover image url of the media at its largest size. If this size isn't available, large will be provided instead.
        public var extraLarge: String? {
          get {
            return resultMap["extraLarge"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "extraLarge")
          }
        }
      }

      public struct StartDate: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["FuzzyDate"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("year", type: .scalar(Int.self)),
            GraphQLField("month", type: .scalar(Int.self)),
            GraphQLField("day", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(year: Int? = nil, month: Int? = nil, day: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "FuzzyDate", "year": year, "month": month, "day": day])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Numeric Year (2017)
        public var year: Int? {
          get {
            return resultMap["year"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "year")
          }
        }

        /// Numeric Month (3)
        public var month: Int? {
          get {
            return resultMap["month"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "month")
          }
        }

        /// Numeric Day (24)
        public var day: Int? {
          get {
            return resultMap["day"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "day")
          }
        }
      }

      public struct EndDate: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["FuzzyDate"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("year", type: .scalar(Int.self)),
            GraphQLField("month", type: .scalar(Int.self)),
            GraphQLField("day", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(year: Int? = nil, month: Int? = nil, day: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "FuzzyDate", "year": year, "month": month, "day": day])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Numeric Year (2017)
        public var year: Int? {
          get {
            return resultMap["year"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "year")
          }
        }

        /// Numeric Month (3)
        public var month: Int? {
          get {
            return resultMap["month"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "month")
          }
        }

        /// Numeric Day (24)
        public var day: Int? {
          get {
            return resultMap["day"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "day")
          }
        }
      }

      public struct NextAiringEpisode: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AiringSchedule"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("airingAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("timeUntilAiring", type: .nonNull(.scalar(Int.self))),
            GraphQLField("episode", type: .nonNull(.scalar(Int.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(airingAt: Int, timeUntilAiring: Int, episode: Int) {
          self.init(unsafeResultMap: ["__typename": "AiringSchedule", "airingAt": airingAt, "timeUntilAiring": timeUntilAiring, "episode": episode])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The time the episode airs at
        public var airingAt: Int {
          get {
            return resultMap["airingAt"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "airingAt")
          }
        }

        /// Seconds until episode starts airing
        public var timeUntilAiring: Int {
          get {
            return resultMap["timeUntilAiring"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "timeUntilAiring")
          }
        }

        /// The airing episode number
        public var episode: Int {
          get {
            return resultMap["episode"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "episode")
          }
        }
      }

      public struct Relation: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("edges", type: .list(.object(Edge.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(edges: [Edge?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var edges: [Edge?]? {
          get {
            return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaEdge"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(Int.self)),
              GraphQLField("relationType", arguments: ["version": 2], type: .scalar(MediaRelation.self)),
              GraphQLField("node", type: .object(Node.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int? = nil, relationType: MediaRelation? = nil, node: Node? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaEdge", "id": id, "relationType": relationType, "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The id of the connection
          public var id: Int? {
            get {
              return resultMap["id"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The type of relation to the parent model
          public var relationType: MediaRelation? {
            get {
              return resultMap["relationType"] as? MediaRelation
            }
            set {
              resultMap.updateValue(newValue, forKey: "relationType")
            }
          }

          public var node: Node? {
            get {
              return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "node")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Media"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("title", type: .object(Title.selections)),
                GraphQLField("format", type: .scalar(MediaFormat.self)),
                GraphQLField("type", type: .scalar(MediaType.self)),
                GraphQLField("status", type: .scalar(MediaStatus.self)),
                GraphQLField("bannerImage", type: .scalar(String.self)),
                GraphQLField("coverImage", type: .object(CoverImage.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, title: Title? = nil, format: MediaFormat? = nil, type: MediaType? = nil, status: MediaStatus? = nil, bannerImage: String? = nil, coverImage: CoverImage? = nil) {
              self.init(unsafeResultMap: ["__typename": "Media", "id": id, "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }, "format": format, "type": type, "status": status, "bannerImage": bannerImage, "coverImage": coverImage.flatMap { (value: CoverImage) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the media
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The official titles of the media in various languages
            public var title: Title? {
              get {
                return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "title")
              }
            }

            /// The format the media was released in
            public var format: MediaFormat? {
              get {
                return resultMap["format"] as? MediaFormat
              }
              set {
                resultMap.updateValue(newValue, forKey: "format")
              }
            }

            /// The type of the media; anime or manga
            public var type: MediaType? {
              get {
                return resultMap["type"] as? MediaType
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            /// The current releasing status of the media
            public var status: MediaStatus? {
              get {
                return resultMap["status"] as? MediaStatus
              }
              set {
                resultMap.updateValue(newValue, forKey: "status")
              }
            }

            /// The banner image of the media
            public var bannerImage: String? {
              get {
                return resultMap["bannerImage"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "bannerImage")
              }
            }

            /// The cover images of the media
            public var coverImage: CoverImage? {
              get {
                return (resultMap["coverImage"] as? ResultMap).flatMap { CoverImage(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "coverImage")
              }
            }

            public struct Title: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["MediaTitle"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("romaji", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(romaji: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "MediaTitle", "romaji": romaji])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The romanization of the native language title
              public var romaji: String? {
                get {
                  return resultMap["romaji"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "romaji")
                }
              }
            }

            public struct CoverImage: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["MediaCoverImage"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("large", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(large: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "MediaCoverImage", "large": large])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The cover image url of the media at a large size
              public var large: String? {
                get {
                  return resultMap["large"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "large")
                }
              }
            }
          }
        }
      }

      public struct CharacterPreview: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CharacterConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("edges", type: .list(.object(Edge.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(edges: [Edge?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "CharacterConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var edges: [Edge?]? {
          get {
            return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CharacterEdge"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(Int.self)),
              GraphQLField("role", type: .scalar(CharacterRole.self)),
              GraphQLField("voiceActors", arguments: ["language": "JAPANESE"], type: .list(.object(VoiceActor.selections))),
              GraphQLField("node", type: .object(Node.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int? = nil, role: CharacterRole? = nil, voiceActors: [VoiceActor?]? = nil, node: Node? = nil) {
            self.init(unsafeResultMap: ["__typename": "CharacterEdge", "id": id, "role": role, "voiceActors": voiceActors.flatMap { (value: [VoiceActor?]) -> [ResultMap?] in value.map { (value: VoiceActor?) -> ResultMap? in value.flatMap { (value: VoiceActor) -> ResultMap in value.resultMap } } }, "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The id of the connection
          public var id: Int? {
            get {
              return resultMap["id"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The characters role in the media
          public var role: CharacterRole? {
            get {
              return resultMap["role"] as? CharacterRole
            }
            set {
              resultMap.updateValue(newValue, forKey: "role")
            }
          }

          /// The voice actors of the character
          public var voiceActors: [VoiceActor?]? {
            get {
              return (resultMap["voiceActors"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [VoiceActor?] in value.map { (value: ResultMap?) -> VoiceActor? in value.flatMap { (value: ResultMap) -> VoiceActor in VoiceActor(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [VoiceActor?]) -> [ResultMap?] in value.map { (value: VoiceActor?) -> ResultMap? in value.flatMap { (value: VoiceActor) -> ResultMap in value.resultMap } } }, forKey: "voiceActors")
            }
          }

          public var node: Node? {
            get {
              return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "node")
            }
          }

          public struct VoiceActor: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Staff"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("name", type: .object(Name.selections)),
                GraphQLField("language", type: .scalar(StaffLanguage.self)),
                GraphQLField("image", type: .object(Image.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, name: Name? = nil, language: StaffLanguage? = nil, image: Image? = nil) {
              self.init(unsafeResultMap: ["__typename": "Staff", "id": id, "name": name.flatMap { (value: Name) -> ResultMap in value.resultMap }, "language": language, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the staff member
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The names of the staff member
            public var name: Name? {
              get {
                return (resultMap["name"] as? ResultMap).flatMap { Name(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "name")
              }
            }

            /// The primary language of the staff member
            public var language: StaffLanguage? {
              get {
                return resultMap["language"] as? StaffLanguage
              }
              set {
                resultMap.updateValue(newValue, forKey: "language")
              }
            }

            /// The staff images
            public var image: Image? {
              get {
                return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "image")
              }
            }

            public struct Name: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["StaffName"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("full", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(full: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "StaffName", "full": full])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The person's full name
              public var full: String? {
                get {
                  return resultMap["full"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "full")
                }
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["StaffImage"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("large", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(large: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "StaffImage", "large": large])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The person's image of media at its largest size
              public var large: String? {
                get {
                  return resultMap["large"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "large")
                }
              }
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Character"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("name", type: .object(Name.selections)),
                GraphQLField("image", type: .object(Image.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, name: Name? = nil, image: Image? = nil) {
              self.init(unsafeResultMap: ["__typename": "Character", "id": id, "name": name.flatMap { (value: Name) -> ResultMap in value.resultMap }, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the character
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The names of the character
            public var name: Name? {
              get {
                return (resultMap["name"] as? ResultMap).flatMap { Name(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "name")
              }
            }

            /// Character images
            public var image: Image? {
              get {
                return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "image")
              }
            }

            public struct Name: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CharacterName"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("full", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(full: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "CharacterName", "full": full])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The character's full name
              public var full: String? {
                get {
                  return resultMap["full"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "full")
                }
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CharacterImage"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("large", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(large: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "CharacterImage", "large": large])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The character's image of media at its largest size
              public var large: String? {
                get {
                  return resultMap["large"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "large")
                }
              }
            }
          }
        }
      }

      public struct StaffPreview: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["StaffConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("edges", type: .list(.object(Edge.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(edges: [Edge?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "StaffConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var edges: [Edge?]? {
          get {
            return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["StaffEdge"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(Int.self)),
              GraphQLField("role", type: .scalar(String.self)),
              GraphQLField("node", type: .object(Node.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int? = nil, role: String? = nil, node: Node? = nil) {
            self.init(unsafeResultMap: ["__typename": "StaffEdge", "id": id, "role": role, "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The id of the connection
          public var id: Int? {
            get {
              return resultMap["id"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The role of the staff member in the production of the media
          public var role: String? {
            get {
              return resultMap["role"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "role")
            }
          }

          public var node: Node? {
            get {
              return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "node")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Staff"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("name", type: .object(Name.selections)),
                GraphQLField("language", type: .scalar(StaffLanguage.self)),
                GraphQLField("image", type: .object(Image.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, name: Name? = nil, language: StaffLanguage? = nil, image: Image? = nil) {
              self.init(unsafeResultMap: ["__typename": "Staff", "id": id, "name": name.flatMap { (value: Name) -> ResultMap in value.resultMap }, "language": language, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the staff member
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The names of the staff member
            public var name: Name? {
              get {
                return (resultMap["name"] as? ResultMap).flatMap { Name(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "name")
              }
            }

            /// The primary language of the staff member
            public var language: StaffLanguage? {
              get {
                return resultMap["language"] as? StaffLanguage
              }
              set {
                resultMap.updateValue(newValue, forKey: "language")
              }
            }

            /// The staff images
            public var image: Image? {
              get {
                return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "image")
              }
            }

            public struct Name: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["StaffName"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("full", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(full: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "StaffName", "full": full])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The person's full name
              public var full: String? {
                get {
                  return resultMap["full"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "full")
                }
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["StaffImage"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("large", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(large: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "StaffImage", "large": large])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The person's image of media at its largest size
              public var large: String? {
                get {
                  return resultMap["large"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "large")
                }
              }
            }
          }
        }
      }

      public struct Studio: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["StudioConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("edges", type: .list(.object(Edge.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(edges: [Edge?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "StudioConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var edges: [Edge?]? {
          get {
            return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["StudioEdge"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("isMain", type: .nonNull(.scalar(Bool.self))),
              GraphQLField("node", type: .object(Node.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(isMain: Bool, node: Node? = nil) {
            self.init(unsafeResultMap: ["__typename": "StudioEdge", "isMain": isMain, "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// If the studio is the main animation studio of the anime
          public var isMain: Bool {
            get {
              return resultMap["isMain"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isMain")
            }
          }

          public var node: Node? {
            get {
              return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "node")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Studio"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, name: String) {
              self.init(unsafeResultMap: ["__typename": "Studio", "id": id, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the studio
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The name of the studio
            public var name: String {
              get {
                return resultMap["name"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }
        }
      }

      public struct ReviewPreview: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ReviewConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("pageInfo", type: .object(PageInfo.selections)),
            GraphQLField("nodes", type: .list(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(pageInfo: PageInfo? = nil, nodes: [Node?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "ReviewConnection", "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The pagination information
        public var pageInfo: PageInfo? {
          get {
            return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
          }
        }

        public var nodes: [Node?]? {
          get {
            return (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
          }
        }

        public struct PageInfo: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PageInfo"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("total", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(total: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "PageInfo", "total": total])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The total number of items
          public var total: Int? {
            get {
              return resultMap["total"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "total")
            }
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Review"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(Int.self))),
              GraphQLField("summary", type: .scalar(String.self)),
              GraphQLField("rating", type: .scalar(Int.self)),
              GraphQLField("ratingAmount", type: .scalar(Int.self)),
              GraphQLField("user", type: .object(User.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int, summary: String? = nil, rating: Int? = nil, ratingAmount: Int? = nil, user: User? = nil) {
            self.init(unsafeResultMap: ["__typename": "Review", "id": id, "summary": summary, "rating": rating, "ratingAmount": ratingAmount, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The id of the review
          public var id: Int {
            get {
              return resultMap["id"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// A short summary of the review
          public var summary: String? {
            get {
              return resultMap["summary"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "summary")
            }
          }

          /// The total user rating of the review
          public var rating: Int? {
            get {
              return resultMap["rating"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "rating")
            }
          }

          /// The amount of user ratings of the review
          public var ratingAmount: Int? {
            get {
              return resultMap["ratingAmount"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "ratingAmount")
            }
          }

          /// The creator of the review
          public var user: User? {
            get {
              return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "user")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["User"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("avatar", type: .object(Avatar.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, name: String, avatar: Avatar? = nil) {
              self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the user
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The name of the user
            public var name: String {
              get {
                return resultMap["name"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            /// The user's avatar images
            public var avatar: Avatar? {
              get {
                return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
              }
            }

            public struct Avatar: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["UserAvatar"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("large", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(large: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "UserAvatar", "large": large])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The avatar of user at its largest size
              public var large: String? {
                get {
                  return resultMap["large"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "large")
                }
              }
            }
          }
        }
      }

      public struct Recommendation: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["RecommendationConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("pageInfo", type: .object(PageInfo.selections)),
            GraphQLField("nodes", type: .list(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(pageInfo: PageInfo? = nil, nodes: [Node?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "RecommendationConnection", "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The pagination information
        public var pageInfo: PageInfo? {
          get {
            return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
          }
        }

        public var nodes: [Node?]? {
          get {
            return (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
          }
        }

        public struct PageInfo: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PageInfo"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("total", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(total: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "PageInfo", "total": total])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The total number of items
          public var total: Int? {
            get {
              return resultMap["total"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "total")
            }
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Recommendation"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(Int.self))),
              GraphQLField("rating", type: .scalar(Int.self)),
              GraphQLField("userRating", type: .scalar(RecommendationRating.self)),
              GraphQLField("mediaRecommendation", type: .object(MediaRecommendation.selections)),
              GraphQLField("user", type: .object(User.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int, rating: Int? = nil, userRating: RecommendationRating? = nil, mediaRecommendation: MediaRecommendation? = nil, user: User? = nil) {
            self.init(unsafeResultMap: ["__typename": "Recommendation", "id": id, "rating": rating, "userRating": userRating, "mediaRecommendation": mediaRecommendation.flatMap { (value: MediaRecommendation) -> ResultMap in value.resultMap }, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The id of the recommendation
          public var id: Int {
            get {
              return resultMap["id"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// Users rating of the recommendation
          public var rating: Int? {
            get {
              return resultMap["rating"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "rating")
            }
          }

          /// The rating of the recommendation by currently authenticated user
          public var userRating: RecommendationRating? {
            get {
              return resultMap["userRating"] as? RecommendationRating
            }
            set {
              resultMap.updateValue(newValue, forKey: "userRating")
            }
          }

          /// The recommended media
          public var mediaRecommendation: MediaRecommendation? {
            get {
              return (resultMap["mediaRecommendation"] as? ResultMap).flatMap { MediaRecommendation(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "mediaRecommendation")
            }
          }

          /// The user that first created the recommendation
          public var user: User? {
            get {
              return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "user")
            }
          }

          public struct MediaRecommendation: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Media"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("title", type: .object(Title.selections)),
                GraphQLField("format", type: .scalar(MediaFormat.self)),
                GraphQLField("type", type: .scalar(MediaType.self)),
                GraphQLField("status", type: .scalar(MediaStatus.self)),
                GraphQLField("bannerImage", type: .scalar(String.self)),
                GraphQLField("coverImage", type: .object(CoverImage.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, title: Title? = nil, format: MediaFormat? = nil, type: MediaType? = nil, status: MediaStatus? = nil, bannerImage: String? = nil, coverImage: CoverImage? = nil) {
              self.init(unsafeResultMap: ["__typename": "Media", "id": id, "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }, "format": format, "type": type, "status": status, "bannerImage": bannerImage, "coverImage": coverImage.flatMap { (value: CoverImage) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the media
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The official titles of the media in various languages
            public var title: Title? {
              get {
                return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "title")
              }
            }

            /// The format the media was released in
            public var format: MediaFormat? {
              get {
                return resultMap["format"] as? MediaFormat
              }
              set {
                resultMap.updateValue(newValue, forKey: "format")
              }
            }

            /// The type of the media; anime or manga
            public var type: MediaType? {
              get {
                return resultMap["type"] as? MediaType
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            /// The current releasing status of the media
            public var status: MediaStatus? {
              get {
                return resultMap["status"] as? MediaStatus
              }
              set {
                resultMap.updateValue(newValue, forKey: "status")
              }
            }

            /// The banner image of the media
            public var bannerImage: String? {
              get {
                return resultMap["bannerImage"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "bannerImage")
              }
            }

            /// The cover images of the media
            public var coverImage: CoverImage? {
              get {
                return (resultMap["coverImage"] as? ResultMap).flatMap { CoverImage(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "coverImage")
              }
            }

            public struct Title: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["MediaTitle"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("userPreferred", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(userPreferred: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "MediaTitle", "userPreferred": userPreferred])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The currently authenticated users preferred title language. Default romaji for non-authenticated
              public var userPreferred: String? {
                get {
                  return resultMap["userPreferred"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "userPreferred")
                }
              }
            }

            public struct CoverImage: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["MediaCoverImage"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("large", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(large: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "MediaCoverImage", "large": large])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The cover image url of the media at a large size
              public var large: String? {
                get {
                  return resultMap["large"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "large")
                }
              }
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["User"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("avatar", type: .object(Avatar.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, name: String, avatar: Avatar? = nil) {
              self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the user
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The name of the user
            public var name: String {
              get {
                return resultMap["name"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            /// The user's avatar images
            public var avatar: Avatar? {
              get {
                return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
              }
            }

            public struct Avatar: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["UserAvatar"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("large", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(large: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "UserAvatar", "large": large])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The avatar of user at its largest size
              public var large: String? {
                get {
                  return resultMap["large"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "large")
                }
              }
            }
          }
        }
      }

      public struct ExternalLink: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaExternalLink"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("site", type: .nonNull(.scalar(String.self))),
            GraphQLField("url", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(site: String, url: String) {
          self.init(unsafeResultMap: ["__typename": "MediaExternalLink", "site": site, "url": url])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The site location of the external link
        public var site: String {
          get {
            return resultMap["site"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site")
          }
        }

        /// The url of the external link
        public var url: String {
          get {
            return resultMap["url"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }
      }

      public struct StreamingEpisode: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaStreamingEpisode"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("site", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("thumbnail", type: .scalar(String.self)),
            GraphQLField("url", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(site: String? = nil, title: String? = nil, thumbnail: String? = nil, url: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaStreamingEpisode", "site": site, "title": title, "thumbnail": thumbnail, "url": url])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The site location of the streaming episodes
        public var site: String? {
          get {
            return resultMap["site"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site")
          }
        }

        /// Title of the episode
        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        /// Url of episode image thumbnail
        public var thumbnail: String? {
          get {
            return resultMap["thumbnail"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "thumbnail")
          }
        }

        /// The url of the episode
        public var url: String? {
          get {
            return resultMap["url"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }
      }

      public struct Trailer: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaTrailer"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(String.self)),
            GraphQLField("site", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String? = nil, site: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaTrailer", "id": id, "site": site])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The trailer video id
        public var id: String? {
          get {
            return resultMap["id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The site the video is hosted by (Currently either youtube or dailymotion)
        public var site: String? {
          get {
            return resultMap["site"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site")
          }
        }
      }

      public struct Ranking: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaRank"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("rank", type: .nonNull(.scalar(Int.self))),
            GraphQLField("type", type: .nonNull(.scalar(MediaRankType.self))),
            GraphQLField("format", type: .nonNull(.scalar(MediaFormat.self))),
            GraphQLField("year", type: .scalar(Int.self)),
            GraphQLField("season", type: .scalar(MediaSeason.self)),
            GraphQLField("allTime", type: .scalar(Bool.self)),
            GraphQLField("context", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, rank: Int, type: MediaRankType, format: MediaFormat, year: Int? = nil, season: MediaSeason? = nil, allTime: Bool? = nil, context: String) {
          self.init(unsafeResultMap: ["__typename": "MediaRank", "id": id, "rank": rank, "type": type, "format": format, "year": year, "season": season, "allTime": allTime, "context": context])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the rank
        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The numerical rank of the media
        public var rank: Int {
          get {
            return resultMap["rank"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "rank")
          }
        }

        /// The type of ranking
        public var type: MediaRankType {
          get {
            return resultMap["type"]! as! MediaRankType
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        /// The format the media is ranked within
        public var format: MediaFormat {
          get {
            return resultMap["format"]! as! MediaFormat
          }
          set {
            resultMap.updateValue(newValue, forKey: "format")
          }
        }

        /// The year the media is ranked within
        public var year: Int? {
          get {
            return resultMap["year"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "year")
          }
        }

        /// The season the media is ranked within
        public var season: MediaSeason? {
          get {
            return resultMap["season"] as? MediaSeason
          }
          set {
            resultMap.updateValue(newValue, forKey: "season")
          }
        }

        /// If the ranking is based on all time instead of a season/year
        public var allTime: Bool? {
          get {
            return resultMap["allTime"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "allTime")
          }
        }

        /// String that gives context to the ranking type and time span
        public var context: String {
          get {
            return resultMap["context"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "context")
          }
        }
      }

      public struct Tag: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaTag"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("rank", type: .scalar(Int.self)),
            GraphQLField("isMediaSpoiler", type: .scalar(Bool.self)),
            GraphQLField("isGeneralSpoiler", type: .scalar(Bool.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, name: String, description: String? = nil, rank: Int? = nil, isMediaSpoiler: Bool? = nil, isGeneralSpoiler: Bool? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaTag", "id": id, "name": name, "description": description, "rank": rank, "isMediaSpoiler": isMediaSpoiler, "isGeneralSpoiler": isGeneralSpoiler])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the tag
        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The name of the tag
        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// A general description of the tag
        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        /// The relevance ranking of the tag out of the 100 for this media
        public var rank: Int? {
          get {
            return resultMap["rank"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "rank")
          }
        }

        /// If the tag is a spoiler for this media
        public var isMediaSpoiler: Bool? {
          get {
            return resultMap["isMediaSpoiler"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isMediaSpoiler")
          }
        }

        /// If the tag could be a spoiler for any media
        public var isGeneralSpoiler: Bool? {
          get {
            return resultMap["isGeneralSpoiler"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isGeneralSpoiler")
          }
        }
      }

      public struct MediaListEntry: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaList"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("status", type: .scalar(MediaListStatus.self)),
            GraphQLField("score", type: .scalar(Double.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, status: MediaListStatus? = nil, score: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaList", "id": id, "status": status, "score": score])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the list entry
        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The watching/reading status
        public var status: MediaListStatus? {
          get {
            return resultMap["status"] as? MediaListStatus
          }
          set {
            resultMap.updateValue(newValue, forKey: "status")
          }
        }

        /// The score of the entry
        public var score: Double? {
          get {
            return resultMap["score"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "score")
          }
        }
      }

      public struct Stat: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaStats"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("statusDistribution", type: .list(.object(StatusDistribution.selections))),
            GraphQLField("scoreDistribution", type: .list(.object(ScoreDistribution.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(statusDistribution: [StatusDistribution?]? = nil, scoreDistribution: [ScoreDistribution?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaStats", "statusDistribution": statusDistribution.flatMap { (value: [StatusDistribution?]) -> [ResultMap?] in value.map { (value: StatusDistribution?) -> ResultMap? in value.flatMap { (value: StatusDistribution) -> ResultMap in value.resultMap } } }, "scoreDistribution": scoreDistribution.flatMap { (value: [ScoreDistribution?]) -> [ResultMap?] in value.map { (value: ScoreDistribution?) -> ResultMap? in value.flatMap { (value: ScoreDistribution) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var statusDistribution: [StatusDistribution?]? {
          get {
            return (resultMap["statusDistribution"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [StatusDistribution?] in value.map { (value: ResultMap?) -> StatusDistribution? in value.flatMap { (value: ResultMap) -> StatusDistribution in StatusDistribution(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [StatusDistribution?]) -> [ResultMap?] in value.map { (value: StatusDistribution?) -> ResultMap? in value.flatMap { (value: StatusDistribution) -> ResultMap in value.resultMap } } }, forKey: "statusDistribution")
          }
        }

        public var scoreDistribution: [ScoreDistribution?]? {
          get {
            return (resultMap["scoreDistribution"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ScoreDistribution?] in value.map { (value: ResultMap?) -> ScoreDistribution? in value.flatMap { (value: ResultMap) -> ScoreDistribution in ScoreDistribution(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [ScoreDistribution?]) -> [ResultMap?] in value.map { (value: ScoreDistribution?) -> ResultMap? in value.flatMap { (value: ScoreDistribution) -> ResultMap in value.resultMap } } }, forKey: "scoreDistribution")
          }
        }

        public struct StatusDistribution: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["StatusDistribution"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("status", type: .scalar(MediaListStatus.self)),
              GraphQLField("amount", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(status: MediaListStatus? = nil, amount: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "StatusDistribution", "status": status, "amount": amount])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The day the activity took place (Unix timestamp)
          public var status: MediaListStatus? {
            get {
              return resultMap["status"] as? MediaListStatus
            }
            set {
              resultMap.updateValue(newValue, forKey: "status")
            }
          }

          /// The amount of entries with this status
          public var amount: Int? {
            get {
              return resultMap["amount"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "amount")
            }
          }
        }

        public struct ScoreDistribution: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ScoreDistribution"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("score", type: .scalar(Int.self)),
              GraphQLField("amount", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(score: Int? = nil, amount: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "ScoreDistribution", "score": score, "amount": amount])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var score: Int? {
            get {
              return resultMap["score"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "score")
            }
          }

          /// The amount of list entries with this score
          public var amount: Int? {
            get {
              return resultMap["amount"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "amount")
            }
          }
        }
      }
    }
  }
}

public final class GetTopMediaQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getTopMedia($page: Int, $type: MediaType, $sort: [MediaSort]) {
      Page(page: $page, perPage: 25) {
        __typename
        pageInfo {
          __typename
          total
          currentPage
          lastPage
          hasNextPage
          perPage
        }
        media(sort: $sort, type: $type, isAdult: false) {
          __typename
          ...mediaFragment
        }
      }
    }
    """

  public let operationName: String = "getTopMedia"

  public var queryDocument: String { return operationDefinition.appending(MediaFragment.fragmentDefinition) }

  public var page: Int?
  public var type: MediaType?
  public var sort: [MediaSort?]?

  public init(page: Int? = nil, type: MediaType? = nil, sort: [MediaSort?]? = nil) {
    self.page = page
    self.type = type
    self.sort = sort
  }

  public var variables: GraphQLMap? {
    return ["page": page, "type": type, "sort": sort]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["page": GraphQLVariable("page"), "perPage": 25], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pageInfo", type: .object(PageInfo.selections)),
          GraphQLField("media", arguments: ["sort": GraphQLVariable("sort"), "type": GraphQLVariable("type"), "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pageInfo: PageInfo? = nil, media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The pagination information
      public var pageInfo: PageInfo? {
        get {
          return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct PageInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PageInfo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("total", type: .scalar(Int.self)),
            GraphQLField("currentPage", type: .scalar(Int.self)),
            GraphQLField("lastPage", type: .scalar(Int.self)),
            GraphQLField("hasNextPage", type: .scalar(Bool.self)),
            GraphQLField("perPage", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(total: Int? = nil, currentPage: Int? = nil, lastPage: Int? = nil, hasNextPage: Bool? = nil, perPage: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageInfo", "total": total, "currentPage": currentPage, "lastPage": lastPage, "hasNextPage": hasNextPage, "perPage": perPage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The total number of items
        public var total: Int? {
          get {
            return resultMap["total"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "total")
          }
        }

        /// The current page
        public var currentPage: Int? {
          get {
            return resultMap["currentPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "currentPage")
          }
        }

        /// The last page
        public var lastPage: Int? {
          get {
            return resultMap["lastPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastPage")
          }
        }

        /// If there is another page
        public var hasNextPage: Bool? {
          get {
            return resultMap["hasNextPage"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hasNextPage")
          }
        }

        /// The count on a page
        public var perPage: Int? {
          get {
            return resultMap["perPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "perPage")
          }
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(MediaFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var mediaFragment: MediaFragment {
            get {
              return MediaFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class SearchMediaQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query searchMedia($page: Int, $search: String) {
      Page(page: $page, perPage: 30) {
        __typename
        pageInfo {
          __typename
          total
          currentPage
          lastPage
          hasNextPage
          perPage
        }
        media(search: $search, sort: POPULARITY_DESC, isAdult: false) {
          __typename
          ...mediaFragment
        }
      }
    }
    """

  public let operationName: String = "searchMedia"

  public var queryDocument: String { return operationDefinition.appending(MediaFragment.fragmentDefinition) }

  public var page: Int?
  public var search: String?

  public init(page: Int? = nil, search: String? = nil) {
    self.page = page
    self.search = search
  }

  public var variables: GraphQLMap? {
    return ["page": page, "search": search]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["page": GraphQLVariable("page"), "perPage": 30], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pageInfo", type: .object(PageInfo.selections)),
          GraphQLField("media", arguments: ["search": GraphQLVariable("search"), "sort": "POPULARITY_DESC", "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pageInfo: PageInfo? = nil, media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The pagination information
      public var pageInfo: PageInfo? {
        get {
          return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct PageInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PageInfo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("total", type: .scalar(Int.self)),
            GraphQLField("currentPage", type: .scalar(Int.self)),
            GraphQLField("lastPage", type: .scalar(Int.self)),
            GraphQLField("hasNextPage", type: .scalar(Bool.self)),
            GraphQLField("perPage", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(total: Int? = nil, currentPage: Int? = nil, lastPage: Int? = nil, hasNextPage: Bool? = nil, perPage: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageInfo", "total": total, "currentPage": currentPage, "lastPage": lastPage, "hasNextPage": hasNextPage, "perPage": perPage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The total number of items
        public var total: Int? {
          get {
            return resultMap["total"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "total")
          }
        }

        /// The current page
        public var currentPage: Int? {
          get {
            return resultMap["currentPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "currentPage")
          }
        }

        /// The last page
        public var lastPage: Int? {
          get {
            return resultMap["lastPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastPage")
          }
        }

        /// If there is another page
        public var hasNextPage: Bool? {
          get {
            return resultMap["hasNextPage"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hasNextPage")
          }
        }

        /// The count on a page
        public var perPage: Int? {
          get {
            return resultMap["perPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "perPage")
          }
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(MediaFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var mediaFragment: MediaFragment {
            get {
              return MediaFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class CurrentUserQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query currentUser {
      Viewer {
        __typename
        id
        name
        avatar {
          __typename
          large
        }
        bannerImage
        about(asHtml: true)
        options {
          __typename
          profileColor
        }
      }
    }
    """

  public let operationName: String = "currentUser"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Viewer", type: .object(Viewer.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Viewer": viewer.flatMap { (value: Viewer) -> ResultMap in value.resultMap }])
    }

    /// Get the currently authenticated user
    public var viewer: Viewer? {
      get {
        return (resultMap["Viewer"] as? ResultMap).flatMap { Viewer(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("avatar", type: .object(Avatar.selections)),
          GraphQLField("bannerImage", type: .scalar(String.self)),
          GraphQLField("about", arguments: ["asHtml": true], type: .scalar(String.self)),
          GraphQLField("options", type: .object(Option.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, name: String, avatar: Avatar? = nil, bannerImage: String? = nil, about: String? = nil, options: Option? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }, "bannerImage": bannerImage, "about": about, "options": options.flatMap { (value: Option) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The id of the user
      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The name of the user
      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// The user's avatar images
      public var avatar: Avatar? {
        get {
          return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
        }
      }

      /// The user's banner images
      public var bannerImage: String? {
        get {
          return resultMap["bannerImage"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "bannerImage")
        }
      }

      /// The bio written by user (Markdown)
      public var about: String? {
        get {
          return resultMap["about"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "about")
        }
      }

      /// The user's general options
      public var options: Option? {
        get {
          return (resultMap["options"] as? ResultMap).flatMap { Option(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "options")
        }
      }

      public struct Avatar: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserAvatar"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("large", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(large: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserAvatar", "large": large])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The avatar of user at its largest size
        public var large: String? {
          get {
            return resultMap["large"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "large")
          }
        }
      }

      public struct Option: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserOptions"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("profileColor", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(profileColor: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserOptions", "profileColor": profileColor])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Profile highlight color (blue, purple, pink, orange, red, green, gray)
        public var profileColor: String? {
          get {
            return resultMap["profileColor"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "profileColor")
          }
        }
      }
    }
  }
}

public struct MediaFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment mediaFragment on Media {
      __typename
      id
      type
      title {
        __typename
        english
        native
        romaji
      }
      coverImage {
        __typename
        large
        color
      }
    }
    """

  public static let possibleTypes: [String] = ["Media"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(Int.self))),
      GraphQLField("type", type: .scalar(MediaType.self)),
      GraphQLField("title", type: .object(Title.selections)),
      GraphQLField("coverImage", type: .object(CoverImage.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: Int, type: MediaType? = nil, title: Title? = nil, coverImage: CoverImage? = nil) {
    self.init(unsafeResultMap: ["__typename": "Media", "id": id, "type": type, "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }, "coverImage": coverImage.flatMap { (value: CoverImage) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The id of the media
  public var id: Int {
    get {
      return resultMap["id"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The type of the media; anime or manga
  public var type: MediaType? {
    get {
      return resultMap["type"] as? MediaType
    }
    set {
      resultMap.updateValue(newValue, forKey: "type")
    }
  }

  /// The official titles of the media in various languages
  public var title: Title? {
    get {
      return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "title")
    }
  }

  /// The cover images of the media
  public var coverImage: CoverImage? {
    get {
      return (resultMap["coverImage"] as? ResultMap).flatMap { CoverImage(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "coverImage")
    }
  }

  public struct Title: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaTitle"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("english", type: .scalar(String.self)),
        GraphQLField("native", type: .scalar(String.self)),
        GraphQLField("romaji", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(english: String? = nil, native: String? = nil, romaji: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "MediaTitle", "english": english, "native": native, "romaji": romaji])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The official english title
    public var english: String? {
      get {
        return resultMap["english"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "english")
      }
    }

    /// Official title in it's native language
    public var native: String? {
      get {
        return resultMap["native"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "native")
      }
    }

    /// The romanization of the native language title
    public var romaji: String? {
      get {
        return resultMap["romaji"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "romaji")
      }
    }
  }

  public struct CoverImage: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaCoverImage"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("large", type: .scalar(String.self)),
        GraphQLField("color", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(large: String? = nil, color: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "MediaCoverImage", "large": large, "color": color])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The cover image url of the media at a large size
    public var large: String? {
      get {
        return resultMap["large"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "large")
      }
    }

    /// Average #hex color of cover image
    public var color: String? {
      get {
        return resultMap["color"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "color")
      }
    }
  }
}
