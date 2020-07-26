//
//  Column.swift
//  RememberCards
//
//  Created by Tony Ayoub on 7/26/20.
//  Copyright © 2020 Tony Ayoub. All rights reserved.
//

import SwiftUI

struct Column: View {
    var suite: Suite

    var body: some View {
        ZStack(alignment: .top) {

            ForEach(CardStore.shared.spades) { card in
                if !card.selected {
                    Card(suite: card.suite, number: card.number)
                }
            }
        }
    }
}

struct Column_Previews: PreviewProvider {
    static var previews: some View {
        Column(suite: .hearts)
    }
}
