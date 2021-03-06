//
//  NetworkClient.swift
//  peek
//
//  Created by Bekzhan Talgat on 10.07.2022.
//

import Foundation

protocol NetworkClient {
    func processRequest<T: Decodable>(
        request: HTTPRequest,
        completion: @escaping (Result<T, HTTPError>) -> Void
    ) -> Cancellable?
}

protocol Cancellable {
    func cancel()
}

