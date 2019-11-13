//
//  PSProductListProtocols.swift
//  ViperProductDemo
//
//  Created by Priyanka on 22/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//

import Foundation

import UIKit

protocol PSProductListViewProtocol: class {
    // PRESENTER -> VIEW
    func showProductList(with products: [String])
}

protocol PSProductListPresenterProtocol: class {
    //View -> Presenter
    var view: PSProductListViewProtocol? {get set}
    var wireframe: PSProductListRouterProtocol? {get set}
    
    func viewDidLoad()
}


protocol PSProductListRouterProtocol: class {
    //Presenter -> Wireframe
    static func createProductListModule(with productListRef: PSProductListView , and category: PSCategory)
}
