//
//  OwnedItem.swift
//  Group1_Store
//
//  Created by Om Chevli on 2023-02-02.
//

import Foundation

class OwnedItem: Item {
    var minutesUsed: Int

    init(item: Item, minutesUsed: Int) {
        self.minutesUsed = minutesUsed
        super.init(id: item.id, title: item.title, price: item.price)
    }
}
