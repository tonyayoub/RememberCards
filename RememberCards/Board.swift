//
//  Board.swift
//  RememberCards
//
//  Created by Tony Ayoub on 7/26/20.
//  Copyright © 2020 Tony Ayoub. All rights reserved.
//

import SwiftUI

struct Board: View {
    var body: some View {
        GeometryReader { reader in
            VStack {
                HStack(alignment: .top) {
                    Column(suite: .spades)
                    Column(suite: .hearts)
                    Column(suite: .diamonds)
                    Column(suite: .clubs)
                }
                Spacer()
            }
        }
    }
}

struct Board_Previews: PreviewProvider {
    static var previews: some View {
        HStack(alignment: .top) {
            Board()
        }
    }
}
