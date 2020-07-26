//
//  Card.swift
//  RememberCards
//
//  Created by Tony Ayoub on 7/26/20.
//  Copyright © 2020 Tony Ayoub. All rights reserved.
//

import SwiftUI
import Introspect

enum Suite: String {
    case spades = "Spades"
    case hearts = "Hearts"
    case diamonds = "Diamonds"
    case clubs = "Clubs"
}

struct Card: View {
    var suite: Suite
    var number: Int

    var imageFileName: String {
        return "\(suite.rawValue)_\(number)"
    }

    @State private var selected = false

    var body: some View {
        Button(action: {
            print("Card \(self.number) tapped")
            self.selected = true
        }) {
            Image(imageFileName)
                .resizable().aspectRatio(contentMode: .fit)
                .opacity(selected ? 0.0 : 1.0)
        }
        .offset(y: Dimensions.screenHeight * CGFloat(number - 2))
    .disabled(selected)

    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(suite: .clubs, number: 14)
    }
}
