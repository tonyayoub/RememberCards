//
//  CardStore.swift
//  RememberCards
//
//  Created by Tony Ayoub on 7/26/20.
//  Copyright © 2020 Tony Ayoub. All rights reserved.
//

import Combine

class CardStore: ObservableObject {

    @Published var deck = [[CardModel]]()


    init() {

        for suite in Suite.allCases {
            var column = [CardModel]()
            for i in (2...14) {
                let card = CardModel(suite: suite, number: i)
                column.append(card)
            }
            deck.append(column)
        }
    }

    func getIndex(for suite: Suite) -> Int {
        switch suite {
        case .spades:
            return 0
        case .hearts:
            return 1
        case .diamonds:
            return 2
        case .clubs:
            return 3
        }
    }

    func getColumn(for suite: Suite) -> [CardModel] {
        let index = getIndex(for: suite)
        return deck[index]
    }

    func select(suite: Suite, number: Int) {

        let columnIndex = getIndex(for: suite)
        let cardIndex = number - 2
        deck[columnIndex][cardIndex].played = true

    }
}
