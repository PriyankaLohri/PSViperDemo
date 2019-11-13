//
//  PSCategoryListPresenter.swift
//  ViperProductDemo
//
//  Created by Priyanka on 21/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//

import UIKit

class PSCategoryListPresenter: PSCategoryListPresenterProtocol {
    
    var wireframe: PSCategoryListRouterProtocol?
    weak var view: PSCategoryListViewProtocol?
    var interactor: PSCategoryListInputInteractorProtocol?
    
    func showCategorySelection(with category: PSCategory, from view: UIViewController) {
        wireframe?.pushToProductList(with: category, from: view)
    }
    
    func viewDidLoad() {
        self.loadCategoryList()
    }
    
    func loadCategoryList() {
        interactor?.getCategoryList()
    }
    
}

extension PSCategoryListPresenter: PSCategoryListOutputInteractorProtocol {
    
    func categoryListDidFetch(categoryList: [PSCategory]) {
        view?.showCategoryList(with: categoryList)
    }
    
}
