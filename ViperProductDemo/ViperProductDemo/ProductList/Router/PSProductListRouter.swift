//
//  PSProductListRouter.swift
//  ViperProductDemo
//
//  Created by Priyanka on 22/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//


import UIKit

class PSProductListRouter: PSProductListRouterProtocol {
  
    class func createProductListModule(with productListRef: PSProductListView , and category: PSCategory) {
        let presenter = PSProductListPresenter()
        presenter.category = category
        productListRef.presenter = presenter
        productListRef.presenter?.wireframe = PSProductListRouter()
        productListRef.presenter?.view = productListRef
    }
    
  
    
}
