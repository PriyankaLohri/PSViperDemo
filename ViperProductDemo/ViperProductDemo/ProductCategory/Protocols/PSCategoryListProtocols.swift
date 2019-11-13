//
//  CategogryListProtocols.swift
//  ViperProductDemo
//
//  Created by Priyanka on 22/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//

import UIKit

protocol PSCategoryListViewProtocol: class {
    // PRESENTER -> VIEW
    func showCategoryList(with categories: [PSCategory])
}

protocol PSCategoryListPresenterProtocol: class {
    //View -> Presenter
    var interactor: PSCategoryListInputInteractorProtocol? {get set}
    var view: PSCategoryListViewProtocol? {get set}
    var wireframe: PSCategoryListRouterProtocol? {get set}
    
    func viewDidLoad()
    func showCategorySelection(with category: PSCategory, from view: UIViewController)
}

protocol PSCategoryListInputInteractorProtocol: class {
    var presenter: PSCategoryListOutputInteractorProtocol? {get set}
    //Presenter -> Interactor
    func getCategoryList()
}

protocol PSCategoryListOutputInteractorProtocol: class {
    //Interactor -> Presenter
    func categoryListDidFetch(categoryList: [PSCategory])
}

protocol PSCategoryListRouterProtocol: class {
    //Presenter -> Wireframe
    func pushToProductList(with category: PSCategory,from view: UIViewController)
    static func createCategoryListModule(categoryListRef: PSCategoryListView)
}
