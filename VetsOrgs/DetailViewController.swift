//
//  DetailViewController.swift
//  VetsOrgs
//
//  Created by David Blake on 4/9/17.
//  Copyright © 2017 Sea Turtle Dreams. All rights reserved.
//
import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var missionLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var webLabel: UILabel!
    @IBOutlet weak var twitterLabel: UILabel!
    @IBOutlet weak var fbLabel: UILabel!
    @IBOutlet weak var contactLabel: UILabel!
    
    var selected: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selected != nil {
//            let item = AppData.items[selected]
            let item = AppData.filteredOrgs[selected]

            if let data = AppData.orgDetails[item] {
//                titleItem.text = item
//                imageItem.image = UIImage(named: data[0])
//                nutritionItem.text = data[1]
                nameLabel.text = item
                addressLabel.text = data[0]
                missionLabel.text = data[1]
                phoneLabel.text = data[2]
                emailLabel.text = data[3]
                webLabel.text = data[4]
                twitterLabel.text = data[5]
                fbLabel.text = data[6]
                contactLabel.text = data[7]
            }
        }
    }
}
