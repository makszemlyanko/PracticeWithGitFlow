//
//  SearchResult.swift
//  AppStoreJSONApis
//
//  Created by Maks Kokos on 03.06.2022.
//

import Foundation


struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
}
