//
//  ContentView.swift
//  RememberCards
//
//  Created by Tony Ayoub on 7/25/20.
//  Copyright © 2020 Tony Ayoub. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { reader in
            Board()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
