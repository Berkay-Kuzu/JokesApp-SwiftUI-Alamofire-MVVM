//
//  JokesData.swift
//  JokesAppSwiftUI
//
//  Created by Berkay Kuzu on 24.09.2022.
//

import Foundation

// SwiftUI'da listelerde gösterebilmek için Identifiable yazmamız lazım ve struct içine id belirtmemiz gerek.

// MARK: - Welcome
struct Welcome: Identifiable, Codable {
    let id = UUID() // hazır bir id'yi kendin ata diyebilirim.
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
