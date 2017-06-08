//
//  ViewController.swift
//  VetsOrgs
//
//  Created by David Blake on 4/9/17.
//  Copyright © 2017 Sea Turtle Dreams. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var funcSectCount: Int = 0
    var funcRowCount: Int = 0
    
    @IBOutlet weak var myTable: UITableView!
//    comment
        override func viewDidLoad() {
            super.viewDidLoad()
            myTable.delegate = self
            myTable.dataSource = self
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            let data = AppData.items
            funcSectCount += 1
            let data = AppData.orgNames
            print("data.count=", data.count, "  func Section count=", funcSectCount)
            return data.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let data = AppData.items
            funcRowCount += 1
            let data = AppData.orgNames
            let cell = myTable.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            cell.textLabel?.text = data[indexPath.row]
            print("indexPath.row=", indexPath.row, "  func Row count=", funcRowCount)
            return cell
        }
//    caused a ghost detail view to be generated
//        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            performSegue(withIdentifier: "showDetails", sender: self)
//        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showDetails" {
                let controller = segue.destination as! DetailViewController
                if let path = myTable.indexPathForSelectedRow {
                    controller.selected = path.row
                }
            }
        }
}
