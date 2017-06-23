//
//  ViewController.swift
//  VetsOrgs
//
//  Created by David Blake on 4/9/17.
//  Copyright © 2017 Sea Turtle Dreams. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,  UISearchBarDelegate {
    
    var funcSectCount: Int = 0
    var funcRowCount: Int = 0
    
    @IBOutlet weak var searchOrgs: UISearchBar!
    @IBOutlet weak var myTable: UITableView!

    
        override func viewDidLoad() {
            super.viewDidLoad()
            myTable.delegate = self
            myTable.dataSource = self
            searchOrgs.delegate = self
        }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            funcSectCount += 1
            let data = AppData.filteredOrgs
            print("data.count=", data.count, "  func Section count=", funcSectCount)
            return data.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            funcRowCount += 1
            let data = AppData.filteredOrgs
            let cell = myTable.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            cell.textLabel?.text = data[indexPath.row]
            print("indexPath.row=", indexPath.row, "  func Row count=", funcRowCount)
            return cell
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            if let text = searchOrgs.text {
                let search = text.trimmingCharacters(in: .whitespaces)
                AppData.filterData(search: search)
                myTable.reloadData()
        }
    }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showDetails" {
                let controller = segue.destination as! DetailViewController
                if let path = myTable.indexPathForSelectedRow {
                    controller.selected = path.row
                }
            }
        }
}
