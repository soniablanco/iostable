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
    private var list:[String] = []

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemcell")!
        cell.textLabel?.text = list[indexPath.row]
        cell.detailTextLabel?.text = "sona"
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let element = list[indexPath.row]
        onElementSelected!(element)
        self.dismiss(animated: true, completion: nil)
    }
    override func viewWillAppear(_ animated: Bool) {

        let dispatchQueue = DispatchQueue(label: "QueueIdentification", qos: .background)
        dispatchQueue.async{
            sleep(4)
            let myElements:[String] = ["1","2","3"]
            DispatchQueue.main.async {
               self.list.append(contentsOf: myElements)
                self.tableView.reloadData()
            }
        }
        
    }
}
