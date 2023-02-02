//
//  Item.swift
//  Group1_Store
//
//  Created by Om Chevli on 2023-02-02.
//

import Foundation

class Item: IsPurchasable {
    let id: Int
    let title: String
    let price: Double

    var info: String {
        return "\(title), $\(price)"
    }

    init(id: Int, title: String, price: Double) {
        self.id = id
        self.title = title
        self.price = price
    }

    func printReceipt(isRefund: Bool, amount: Double) {
        print("-------------------------")
        print("YOUR RECEIPT")
        print("-------------------------")
        if isRefund {
            print("We are refunding the purchase of \(title)")
            print("Refund amount: $\(amount)")
        } else {
            print("Thank you for purchasing \(title)")
            print("Purchase amount: $\(amount)")
        }
    }
    
    func toString() {
        
    }
}
