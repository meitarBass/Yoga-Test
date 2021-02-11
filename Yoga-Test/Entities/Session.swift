//
//  Session.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

struct Session: Codable {
    let array: [Array]
}

struct Array: Codable {
    let length: Int
    let quoteAuthor: String
    let quote: String
    let chapterName: String
    let chapter: Int
    let difficulty: String
}
