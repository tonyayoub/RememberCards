//
//  Card.swift
//  RememberCards
//
//  Created by Tony Ayoub on 7/26/20.
//  Copyright © 2020 Tony Ayoub. All rights reserved.
//

import SwiftUI
import Introspect

enum Suite: String, CaseIterable {
    case spades = "Spades"
    case hearts = "Hearts"
    case diamonds = "Diamonds"
    case clubs = "Clubs"
}

struct Card: View {

    @EnvironmentObject var store: CardStore

    var suite: Suite
    var number: Int

    var imageFileName: String {
        return "\(suite.rawValue)_\(number)"
    }

    var body: some View {
        Button(action: {
            print("Card \(self.number) tapped")
            self.store.select(suite: self.suite, number: self.number)

        }) {
            Image(imageFileName)
                .resizable().aspectRatio(contentMode: .fit)
        }
        .offset(y: Dimensions.screenHeight * CGFloat(number - 2))

    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(suite: .clubs, number: 14)
    }
}
