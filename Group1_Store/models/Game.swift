//
//  Game.swift
//  Group1_Store
//
//  Created by Om Chevli on 2023-02-02.
//

import Foundation

class Game: Item {
    let publisher: String
    let isMultiplayer: Bool

    override var info: String {
        return "\(title), $\(price) Publisher: \(publisher) Is Multiplayer: \(isMultiplayer)"
    }

    init(id: Int, title: String, price: Double, publisher: String, isMultiplayer: Bool) {
        self.publisher = publisher
        self.isMultiplayer = isMultiplayer
        super.init(id: id, title: title, price: price)
    }
    
    override func toString(){
        print("""
        Publisher: \(publisher)
        Has Multiplayer: \(isMultiplayer)
        """)
    }
}
