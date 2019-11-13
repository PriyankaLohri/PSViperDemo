//
//  File.swift
//  ViperProductDemo
//
//  Created by Priyanka on 22/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//



import UIKit

class PSProductListPresenter: PSProductListPresenterProtocol {
    
    var wireframe: PSProductListRouterProtocol?
    weak var view: PSProductListViewProtocol?
    var category: PSCategory?
    
    func viewDidLoad() {
        let productStr = self.category?.products
        var products = [String]()
        products = productStr?.components(separatedBy: ",") ?? [""]
        view?.showProductList(with: products)

    }

    
}

