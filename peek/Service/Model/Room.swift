//
//  RoomStats.swift
//  peek
//
//  Created by Bekzhan Talgat on 10.07.2022.
//

import Foundation

struct Room: Decodable {
    let id: String
    let slug: String
    let creator: String
    let users: [String]
    let status: String
}

enum RoomStatus: Decodable {
    case Created
    case Started
    case Abandoned
}
