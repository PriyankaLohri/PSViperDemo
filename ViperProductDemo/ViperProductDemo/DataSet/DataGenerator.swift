//
//  DataGenerator.swift
//  ViperProductDemo
//
//  Created by Priyanka on 20/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//

import Foundation

class DataGenerator: NSObject {
    //"Price": "₹ 40"
    class func generateDataList() -> [[String: String]] {
        return [["name": "Hair Care", "products":"Shampoo,Hair Oil,Conditioner,Hair Color"],["name": "Skin Care", "products":"Eye Care,Body Care,Lip Care,Face Care"], ["name": "Make up", "products":"Eyes,Lips,Face,Nails"], ["name": "Bath and Hand Wash", "products":"Bathing Bar, Shampoo, Hand Wash, Body Wash, Body Scrub"]]
    }
  
}
