//
//  DetailViewController.swift
//  VetsOrgs
//
//  Created by David Blake on 4/9/17.
//  Copyright © 2017 Sea Turtle Dreams. All rights reserved.
//
import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var addressText: UITextView!
    @IBOutlet weak var missionText: UITextView!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var websiteText: UITextField!
    @IBOutlet weak var twitterText: UITextField!
    @IBOutlet weak var fbpageText: UITextField!
    @IBOutlet weak var contactText: UITextField!
    
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
                nameText.text = item
                addressText.text = data[0]
                missionText.text = data[1]
                phoneText.text = data[2]
                emailText.text = data[3]
                websiteText.text = data[4]
                twitterText.text = data[5]
                fbpageText.text = data[6]
                contactText.text = data[7]
            }
        }
    }
}
