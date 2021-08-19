//
//  CategoryModel.swift
//  Touchdown
//
//  Created by marco rodriguez on 18/08/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
