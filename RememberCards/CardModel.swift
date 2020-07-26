//
//  CardModel.swift
//  RememberCards
//
//  Created by Tony Ayoub on 7/26/20.
//  Copyright © 2020 Tony Ayoub. All rights reserved.
//

import Foundation

struct CardModel: Identifiable {
    var id = UUID()
    var suite: Suite
    var number: Int
    var played = false
}
