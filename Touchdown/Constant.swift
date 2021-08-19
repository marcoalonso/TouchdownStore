//
//  Constant.swift
//  Touchdown
//
//  Created by marco rodriguez on 18/08/21.
//

import SwiftUI

// Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// UX
// API
// IMAGE

//FONT

//STRING

//MISC
