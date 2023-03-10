

import Foundation

let customer1 = Customer()

let game1 = Game(id: 1, title: "Kingdom Rush Origins", price: 19.79, publisher: "Ironhide Game Studio", isMultiplayer: false)
let game2 = Game(id: 2, title: "Heroes: Might and Magic", price: 54.99, publisher: "Ubisoft", isMultiplayer: true)
let movie1 = Movie(id: 3, title: "The Spongebob Square Pants Movie", price: 6.69, runningTime: 98)
let movie2 = Movie(id: 4, title: "The Lord of the Rings: The Return of the King", price: 9.99, runningTime: 201)

let store = Store(items: [game1, game2, movie1, movie2])

store.findByTitle(keyword: "The spo")
store.findByTitle(keyword: "jsdfbh")
store.buyItem(customer: customer1, itemId: 1)
customer1.reloadAccount(amount: 20)
store.buyItem(customer: customer1, itemId: 1)
store.buyItem(customer: customer1, itemId: 3)
store.buyItem(customer: customer1, itemId: 1)

customer1.useItem(id: 3, numMinutes: 31)
store.issueRefund(customer: customer1, itemId: 3)
store.issueRefund(customer: customer1, itemId: 1)


