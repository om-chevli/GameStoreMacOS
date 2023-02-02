//
//  Store.swift
//  Group1_Store
//
//  Created by Om Chevli on 2023-02-02.
//

import Foundation

class Store {
  var items: [Item]

  init(items: [Item]) {
    self.items = items
  }
    
    func buyItem(customer:Customer, itemId:Int) {
        let priceOfItem:Double = getPriceForItem(itemId: itemId)
        if(customer.doesOwnsAItem(itemId: itemId)){
            print("The customer already owns the item.")
            return
        }
        if(customer.canAffordItem(priceOfItem: priceOfItem)){
            customer.balance-=priceOfItem
            let purchasedItem = getItemFromId(itemId: itemId)
            if(purchasedItem != nil){
                let itemToAdd = OwnedItem(item: purchasedItem!, minutesUsed: 0)
                customer.itemsList.append(itemToAdd)
                print("Purchase Success!")
                itemToAdd.printReceipt(isRefund: false, amount: itemToAdd.price)
            }else{
                print("Item with item id \(itemId), does not exist.")
            }
        }else{
            print("Insufficient balance to purchase the item.")
        }
    }
    
    func issueRefund(customer:Customer,itemId:Int){
        let item:Item? = getItemFromId(itemId: itemId)
        if(item == nil){
            print("Item does not exist")
            return
        }
        if(!customer.doesOwnsAItem(itemId: itemId)){
            print("Customer does not own this item!")
        }else{
            if(customer.isEligibleForRefund(itemId: itemId)){
                let amountToRefund = getPriceForItem(itemId: itemId)
                customer.balance += amountToRefund
                item!.printReceipt(isRefund: true, amount: amountToRefund)
                customer.removeItem(itemId: itemId)
            }else{
                print("Customer has used this item for more than 30 minutes.")
            }
        }
    }
    
    func findByTitle(keyword:String) {
        var isItemFound:Bool = false
        for item in items{
            if(item.title.lowercased().contains(keyword.lowercased())){
                print("[\(type(of: item))] \(item.info)")
                isItemFound = true
                return
            }
        }
        if(isItemFound==false){
            print("Sorry, no matching item found!")
        }
    }
    
    //custom utility functions
    func getPriceForItem(itemId:Int)->Double{
        var price:Double = 0.0
        let foundItem:Item? = getItemFromId(itemId: itemId)
        if(foundItem != nil){
            price = foundItem?.price ?? 0.0
        }
        return price
    }
    
    func getItemFromId(itemId:Int) -> Item? {
        var foundItem:Item?
        items.forEach{ item in
            if(item.id==itemId){
                foundItem = item
                return
            }
        }
        return foundItem
    }
}
