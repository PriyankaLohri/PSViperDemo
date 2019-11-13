//
// PSCategory.swift
//  ViperProductDemo
//
//  Created by Priyanka on 21/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//

import Foundation

struct PSCategory {
    var name: String!
    var products: String!
    
    init(attributes: [String: String]) {
        self.name = attributes["name"]
        self.products = attributes["products"]
    }
}
