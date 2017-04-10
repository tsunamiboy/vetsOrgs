//
//  ViewController.swift
//  VetsOrgs
//
//  Created by David Blake on 4/9/17.
//  Copyright © 2017 Sea Turtle Dreams. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTable: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            myTable.delegate = self
            myTable.dataSource = self
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            let data = AppData.items
            return data.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let data = AppData.items
            let cell = myTable.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            cell.textLabel?.text = data[indexPath.row]
            return cell
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "showDetails", sender: self)
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
