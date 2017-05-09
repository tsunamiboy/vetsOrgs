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
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var webLabel: UILabel!
    @IBOutlet weak var twitterLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var fbLabel: UILabel!
    @IBOutlet weak var contactLabel: UILabel!
    
    var selected: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selected != nil {
//            let item = AppData.items[selected]
            let item = AppData.orgNames[selected]

            if let data = AppData.orgDetails[item] {
//                titleItem.text = item
//                imageItem.image = UIImage(named: data[0])
//                nutritionItem.text = data[1]
                nameLabel.text = item
                phoneLabel.text = data[0]
                webLabel.text = data[1]
                twitterLabel.text = data[2]
                emailLabel.text = data[3]
                fbLabel.text = data[4]
                contactLabel.text = data[5]
            }
        }
    }
}
