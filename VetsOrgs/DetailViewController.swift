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
    var newData: Array<String> = []
    var org: String = "unset"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("detailViewContoller selected = ",selected)
        print("Org =",org)
        
        if selected != nil {
             let org = AppData.filteredOrgs[selected]
             if let data = AppData.orgDetails[org] {
                print("Org =",org)
                print("data =",data)

                nameText.text = org
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
    
    @IBAction func changeData(_ sender: UIButton) {
        org = AppData.filteredOrgs[selected]
        var text: String
        
        text = addressText.text!
        text = text.trimmingCharacters(in: .whitespaces)
        newData.append(text)
        
        text = missionText.text!
        text = text.trimmingCharacters(in: .whitespaces)
        newData.append(text)
      
        text = phoneText.text!
        text = text.trimmingCharacters(in: .whitespaces)
        newData.append(text)
        
        text = emailText.text!
        text = text.trimmingCharacters(in: .whitespaces)
        newData.append(text)
        
        text = websiteText.text!
        text = text.trimmingCharacters(in: .whitespaces)
        newData.append(text)
        
        text = twitterText.text!
        text = text.trimmingCharacters(in: .whitespaces)
        newData.append(text)
        
        text = fbpageText.text!
        text = text.trimmingCharacters(in: .whitespaces)
        newData.append(text)
        
        text = contactText.text!
        text = text.trimmingCharacters(in: .whitespaces)
        newData.append(text)
        
        AppData.updateDetails(org: org, arr: newData )
        }
//    }
}
