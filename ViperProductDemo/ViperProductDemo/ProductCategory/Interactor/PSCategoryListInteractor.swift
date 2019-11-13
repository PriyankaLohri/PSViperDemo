//
//  PSCategoryListInteractor.swift
//  ViperProductDemo
//
//  Created by Priyanka on 21/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//

import UIKit

class PSCategoryListInteractor: PSCategoryListInputInteractorProtocol {
    
    weak var presenter: PSCategoryListOutputInteractorProtocol?
    
    func getCategoryList() {
        presenter?.categoryListDidFetch(categoryList: getAllCategoryDetail())
    }
    
    func getAllCategoryDetail() -> [PSCategory] {
        var categoryList = [PSCategory]()
        let allCategoryDetail = DataGenerator.generateDataList()
        for item in allCategoryDetail {
            categoryList.append(PSCategory(attributes: item))
        }
        return categoryList
    }
}
