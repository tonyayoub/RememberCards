//
//  Column.swift
//  RememberCards
//
//  Created by Tony Ayoub on 7/26/20.
//  Copyright © 2020 Tony Ayoub. All rights reserved.
//

import SwiftUI

struct Column: View {

    @EnvironmentObject var store: CardStore

    var suite: Suite

    var body: some View {
        ZStack(alignment: .top) {

            ForEach(store.getColumn(for: suite)) { card in
                if !card.played {
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
