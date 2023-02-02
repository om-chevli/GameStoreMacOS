//
//  Movie.swift
//  Group1_Store
//
//  Created by Om Chevli on 2023-02-02.
//

import Foundation

class Movie: Item {
    let runningTime: Int

    override var info: String {
        return "\(title), $\(price)\nRunning Time: \(runningTime) min"
    }

    init(id: Int, title: String, price: Double, runningTime: Int) {
        self.runningTime = runningTime
        super.init(id: id, title: title, price: price)
    }
    
    override func toString(){
        print("Length: \(runningTime)")
    }
}
