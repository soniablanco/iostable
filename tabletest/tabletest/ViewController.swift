//
//  ViewController.swift
//  tabletest
//
//  Created by piscos on 06/08/2019.
//  Copyright © 2019 piscos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier=="openSearchSegue"){
            let searchController = (segue.destination as! UINavigationController).topViewController as! SearchTableViewController
        }
    }
}

