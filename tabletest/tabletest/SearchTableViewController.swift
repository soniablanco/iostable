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
    override func viewWillAppear(_ animated: Bool) {
        let fdfd = 3;
        let ffdf22 = 2
        self.onElementSelected!("22")
    }
}
