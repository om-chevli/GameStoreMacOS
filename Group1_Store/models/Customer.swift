//
//  Customer.swift
//  Group1_Store
//
//  Created by Om Chevli on 2023-02-02.
//

import Foundation

class Customer {
    var itemsList: [OwnedItem] = []
    var balance: Double = 10.0

    func useItem(id:Int, numMinutes:Int){
        itemsList.forEach{ item in
            if(item.id==id){
                item.minutesUsed += numMinutes
            }
        }
    }
    
    func reloadAccount(amount: Double) {
        balance += amount
        print("Your account has been reloaded with $\(amount)")
        print("New balance is \(balance)")
    }
    
    //Custom Utility Functions
    func canAffordItem(priceOfItem:Double)->Bool{
        return priceOfItem<=balance
    }
    
    func doesOwnsAItem(itemId:Int) -> Bool{
        var doesOwnItem:Bool = false
        for item in itemsList{
            if(item.id == itemId){
                doesOwnItem=true
            }
        }
        return doesOwnItem
    }
    
    func isEligibleForRefund(itemId:Int) -> Bool {
        if(doesOwnsAItem(itemId: itemId)){
            var isEligible:Bool = false
            for item in itemsList{
                if(item.minutesUsed<30){
                    isEligible = true
                }
            }
            return isEligible
        }else{
            return false
        }
    }
    
    func removeItem(itemId:Int) {
        for (i, item) in itemsList.enumerated(){
            if(item.id == itemId){
                itemsList.remove(at: i)
            }
        }
    }
}
