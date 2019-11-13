//
//  PSCategoryListRouter.swift
//  ViperProductDemo
//
//  Created by Priyanka on 21/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//

import UIKit

class PSCategoryListRouter: PSCategoryListRouterProtocol {
    
    func pushToProductList(with category: PSCategory,from view: UIViewController) {
        let productListVC = view.storyboard?.instantiateViewController(withIdentifier: "PSProductListView") as! PSProductListView
        PSProductListRouter.createProductListModule(with: productListVC, and:category)

        view.navigationController?.pushViewController(productListVC, animated: true)
    }
    
    class func createCategoryListModule(categoryListRef: PSCategoryListView) {
        let presenter: PSCategoryListPresenterProtocol & PSCategoryListOutputInteractorProtocol = PSCategoryListPresenter()
        
        categoryListRef.presenter = presenter
        categoryListRef.presenter?.wireframe = PSCategoryListRouter()
        categoryListRef.presenter?.view = categoryListRef
        categoryListRef.presenter?.interactor = PSCategoryListInteractor()
        categoryListRef.presenter?.interactor?.presenter = presenter
    }
    
}
