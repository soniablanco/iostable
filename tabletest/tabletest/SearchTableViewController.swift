//
//  SearchTableViewController.swift
//  tabletest
//
//  Created by piscos on 06/08/2019.
//  Copyright © 2019 piscos. All rights reserved.
//

import UIKit
class SearchTableViewController: UITableViewController {
    var onElementSelected:((String) -> ())?
    private var list:[String] = ["1","2","3"]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemcell")!
        cell.textLabel?.text = list[indexPath.row]
        cell.detailTextLabel?.text = "sona"
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    override func viewWillAppear(_ animated: Bool) {

    }
}
