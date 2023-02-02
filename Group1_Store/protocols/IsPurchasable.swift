//
//  IsPurchasable.swift
//  Group1_Store
//
//  Created by Karan Meghani on 2023-02-02.
//

import Foundation

protocol IsPurchasable {
    var info: String { get }
    func printReceipt(isRefund: Bool, amount: Double)
    //custom utility function
    func toString()
}
