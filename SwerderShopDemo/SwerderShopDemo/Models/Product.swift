//
//  Product.swift
//  SwerderShopDemo
//
//  Created by Mehdi on 27/07/2023.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Orange sweater", image: "sweater1", price: 54),
                   Product(name: "Red wine sweater", image: "sweather2", price: 89),
                   Product(name: "Sand sweather", image: "sweather3", price: 79),
                   Product(name: "Sea sweater", image: "sweather4", price: 94),
                   Product(name: "Cream sweater", image: "sweather5", price: 99),
                   Product(name: "Beige sweater", image: "sweather6", price: 65),
                   Product(name: "Grey sweater", image: "sweather7", price: 54),
                   Product(name: "Mink sweater", image: "sweather8", price: 83)]

