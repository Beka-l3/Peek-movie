//
//  RoomStats.swift
//  peek
//
//  Created by Bekzhan Talgat on 10.07.2022.
//

import Foundation

struct RoomStats: Decodable {
    let matchedMovies: [String]
    let ranking: [Ranking]
}

struct Ranking: Decodable {
    let movieId: String
    let likedUsers: [String]
}
