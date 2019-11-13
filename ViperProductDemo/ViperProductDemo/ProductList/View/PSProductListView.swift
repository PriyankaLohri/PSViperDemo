//
//  PSProductListView.swift
//  ViperProductDemo
//
//  Created by Priyanka on 22/10/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//

import UIKit

class PSProductListView: UIViewController, PSProductListViewProtocol{
    
    @IBOutlet var productTblView: UITableView!
    var presenter:PSProductListPresenterProtocol?
    var productList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    
    func showProductList(with products: [String]) {
        productList = products
        productTblView.reloadData()
    }
    
}



extension PSProductListView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productTblView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        cell.textLabel?.text = productList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
}
