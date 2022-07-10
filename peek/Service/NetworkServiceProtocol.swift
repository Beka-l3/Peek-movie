//
//  RoomStats.swift
//  peek
//
//  Created by Bekzhan Talgat on 10.07.2022.
//

import Foundation
import UIKit

protocol NetworkService: AnyObject {

    // MARK: - POST

    @discardableResult
    func register(
        credentials: User,
        completion: @escaping (Result<Token, HTTPError>) -> Void
    ) -> Cancellable?

    @discardableResult
    func login(
        credentials: User,
        completion: @escaping (Result<Token, HTTPError>) -> Void
    ) -> Cancellable?

    @discardableResult
    func createRoom(
        token: String,
        completion: @escaping (Result<Room, HTTPError>) -> Void
    ) -> Cancellable?

    @discardableResult
    func startRoom(
        token: String,
        slug: String,
        completion: @escaping (Result<Room, HTTPError>) -> Void
    ) -> Cancellable?

    @discardableResult
    func join(
        token: String,
        slug: String,
        completion: @escaping (Result<Room, HTTPError>) -> Void
    ) -> Cancellable?

    @discardableResult
    func like(
        token: String,
        slug: String,
        movieId: String,
        completion: @escaping (Result<Bool, HTTPError>) -> Void
    ) -> Cancellable?

    @discardableResult
    func drop(
        token: String,
        slug: String,
        completion: @escaping (Result<Bool, HTTPError>) -> Void
    ) -> Cancellable?

    // MARK: - GET

    @discardableResult
    func movieInfo(
        token: String,
        movieId: String,
        completion: @escaping (Result<Movie, HTTPError>) -> Void
    ) -> Cancellable?

    @discardableResult
    func roomStats(
        token: String,
        slug: String,
        completion: @escaping (Result<RoomStats, HTTPError>) -> Void
    ) -> Cancellable?

    @discardableResult
    func recommend(
        token: String,
        slug: String,
        completion: @escaping (Result<Movie, HTTPError>) -> Void
    ) -> Cancellable?

    @discardableResult
    func info(
        token: String,
        slug: String,
        completion: @escaping (Result<Room, HTTPError>) -> Void
    ) -> Cancellable?
}
