//
//  PSCategoryListView.swift
//  ViperProductDemo
//
//  Created by Priyanka on 21/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//

import UIKit

class PSCategoryListView: UIViewController,PSCategoryListViewProtocol{

    @IBOutlet var categoryTblView: UITableView!
    var presenter:PSCategoryListPresenterProtocol?
    var categoryList = [PSCategory]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PSCategoryListRouter.createCategoryListModule(categoryListRef: self)
        presenter?.viewDidLoad()
    }
    

    func showCategoryList(with categories: [PSCategory]) {
        categoryList = categories
        categoryTblView.reloadData()
    }

}



extension PSCategoryListView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoryTblView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        let category = categoryList[indexPath.row]
        cell.textLabel?.text = category.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showCategorySelection(with: categoryList[indexPath.row], from: self)
    }
    
}
