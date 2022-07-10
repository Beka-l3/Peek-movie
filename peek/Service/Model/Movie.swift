//
//  RoomStats.swift
//  peek
//
//  Created by Bekzhan Talgat on 10.07.2022.
//

import Foundation

struct Movie: Decodable {
    let id: String
    let name: String
    let posterUrl: String
    let description: String
    let rating: Rating
    let genres: [String]
    let actors: [Actor]
}

struct Rating: Decodable {
    let kinopoisk: Double?
    let imdb: Double?
    let tmdb: Double?
}
