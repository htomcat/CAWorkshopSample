//
//  ProgrammersTableViewController.swift
//  IosConWorkShop
//
//  Created by 浜田　智史 on 2018/03/23.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import UIKit

class ProgrammersTableViewController: UITableViewController {

    var presenter: ProgrammerListPresenter!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewReady()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ProgrammerTableViewCell
        
        presenter.configure(cell: cell, forRow: indexPath.row)
        return cell
    }


}
