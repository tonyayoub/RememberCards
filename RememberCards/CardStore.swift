//
//  CardStore.swift
//  RememberCards
//
//  Created by Tony Ayoub on 7/26/20.
//  Copyright © 2020 Tony Ayoub. All rights reserved.
//

import Foundation

class CardStore {

    static var shared = CardStore()

    var spades = [CardModel]()


    private init() {
        for i in (2...14) {
            spades.append(CardModel(suite: .spades, number: i, selected: false))
        }
    }
}
