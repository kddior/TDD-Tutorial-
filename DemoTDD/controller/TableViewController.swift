//
//  tableViewController.swift
//  DemoTDD
//
//  Created by itie.kone.dossongui on 10/8/19.
//  Copyright © 2019 itie.kone.dossongui. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

  
 var viewModel = TableViewModel(from: NetworkRequest())
        override func viewDidLoad() {
            super.viewDidLoad()

            viewModel.tableViewFirstload()
        
        }

    }
    extension TableViewController {
       
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return viewModel.cellArray.count
          }
          
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DeveloperCell
            let cellDataModel = viewModel.cellAtIndexPAth(indexPath)
            cell.configureCell(from: cellDataModel)
              return cell
          }
}
