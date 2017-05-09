//
//  ApplicationData.swift
//  VetsOrgs
//
//  Created by David Blake on 4/9/17.
//  Copyright © 2017 Sea Turtle Dreams. All rights reserved.
//
import Foundation

struct ApplicationData {
    private var filePath: String!
    var orgNames: [String] {
        didSet {
            orgNames.sort(by: { (value1, value2) in value1 < value2 })
        }
    }
//    var details: [String: [String]]
    var orgDetails: [String: [String]]
    
    init() {
//        items = ["Lettuce", "Tomatoes", "Milk", "Granola", "Donuts", "Cookies", "Butter"]
        orgNames = ["Air Force Association", "Air Force Sergeants Association", "American Ex-Prisoners of War", "American G.I. Forum", "American Legion", "American Veterans (AMVETS)", "American Veterans Committee",]
//        details = ["Lettuce": ["lettuce", "Vitamin A 148%\r\nVitamin C 15%\r\nCalcium 3%\r\nIron 4%\r\nVitamin B-6 5%\r\nMagnesium 3%"], "Tomatoes": ["tomato", "Vitamin A 16%\r\nVitamin C 22%\r\nCalcium 1%\r\nIron 1%\r\nVitamin B-6 5%\r\nMagnesium 2%"], "Milk": ["milk", "Calcium 12%\r\nVitamin B-12 8%\r\nMagnesium 2%"], "Granola": ["granola", "Vitamin C 1%\r\nCalcium 6%\r\nIron 16%\r\nVitamin B-6 5%\r\nMagnesium 24%"], "Donuts": ["donuts", "Vitamin C 2%\r\nCalcium 2%\r\nIron 22%\r\nVitamin B-12 1%\r\nMagnesium 7%"], "Cookies": ["cookies", "Vitamin A 1%\r\nCalcium 3%\r\nIron 15%\r\nVitamin D 1%\r\nVitamin B-6 5%\r\nVitamin B-12 1%"], "Butter": ["butter", "Vitamin A 49%\r\nCalcium 2%\r\nVitamin D 15%\r\nVitamin B-12 3%"]]
//        details = ["Air Force Association": ["Air Force Association", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "Air Force Sergeants Association": ["Air Force Sergeants Association", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Ex-Prisoners of War": ["American Ex-Prisoners of War", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American G.I. Forum": ["American G.I. Forum", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Legion": ["American Legion", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Veterans (AMVETS)": ["American Veterans (AMVETS)", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Veterans Committee": ["American Veterans Committee", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"],]
        orgDetails = ["Air Force Association": ["Air Force Association", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "Air Force Sergeants Association": ["Air Force Sergeants Association", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Ex-Prisoners of War": ["American Ex-Prisoners of War", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American G.I. Forum": ["American G.I. Forum", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Legion": ["American Legion", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Veterans (AMVETS)": ["American Veterans (AMVETS)", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Veterans Committee": ["American Veterans Committee", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A"],]
        
        let manager = FileManager.default
        let documents = manager.urls(for: .documentDirectory, in: .userDomainMask)
        let docURL = documents.first!
// MARK: OrgNames
        let fileOURL = docURL.appendingPathComponent("orgNames.dat")
        filePath = fileOURL.path
        if manager.fileExists(atPath: filePath) {
            orgNames = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! [String]
        } else {
            NSKeyedArchiver.archiveRootObject(orgNames, toFile: filePath)
        }
// MARK: OrgDetails
        let fileDURL = docURL.appendingPathComponent("orgDetails.dat")
        filePath = fileDURL.path
        if manager.fileExists(atPath: filePath) {
            orgDetails = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! [String:[String]]
        } else {
            NSKeyedArchiver.archiveRootObject(orgDetails, toFile: filePath)
        }
        print(filePath)
        print(orgNames)
        print(orgDetails)
        orgNames.sort(by: { (value1, value2) in value1 < value2 })
    }
}
var AppData = ApplicationData()
/*
 
 from project practise21h
 
 private var items: [String]
 private var filePath: String!
 
 init() {
 items = []
 
 let manager = FileManager.default
 let documents = manager.urls(for: .documentDirectory, in: .userDomainMask)
 let docURL = documents.first!
 let fileURL = docURL.appendingPathComponent("items.dat")
 filePath = fileURL.path
 if manager.fileExists(atPath: filePath) {
 items = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! [String]
  } else {
    NSKeyedArchiver.archiveRootObject(items, toFile: filePath)
     }
 
 from project vetx-01
 
 i suspect the initial read will occur in AppDelegate
     and details gets set here using a variable
 use later in data fetch
 let fullText = String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
 -------------
 origin: let readin = fullText.componentsSeparatedByString("\n") as [String]
 change: create a single variable containing raw data
 let readin = rawData.componentsSeparatedByString("\n") as [String]
 rawData = "Air Force Association","N/A","N/A","N/A","N/A","N/A"/n"Air Force Sergeants Association","N/A","N/A","N/A","N/A","N/A"/n"American Ex-Prisoners of War","N/A","N/A","N/A","N/A","N/A"/n"American G.I. Forum","N/A","N/A","N/A","N/A","N/A"/n"American Legion","N/A","N/A","N/A","N/A","N/A"/n"American Veterans (AMVETS)","N/A","N/A","N/A","N/A","N/A"/n"American Veterans Committee","N/A","N/A","N/A","N/A","N/A"
 -------------
 required:
 var dictOrgs = [String:String]()
 var arrayOrgs = NSMutableArray()
 
 for i in 1..<readin.count {
 let orgsData = readin[i].componentsSeparatedByString(",")
 
 dictOrgs["OrgName"] = "\(orgsData[0])"
 dictOrgs["website"] = "\(orgsData[1])"
 dictOrgs["phone"]   = "\(orgsData[2])"
 dictOrgs["email"]   = "\(orgsData[3])"
 dictOrgs["twitter"] = "\(orgsData[4])"
 dictOrgs["FBPage"]  = "\(orgsData[5])"
 
 arrayOrgs.addObjects(from: dictOrgs)
 
 }
 } catch let error as NSError {
 print("Error: \(error)")
 }
 }
 self.title = "Number of Organizations: \(arrayOrgs.count)"
 
 }
 
THEN:
 build variable 'preDetails'
 preDetails/details: [String: [String]]
  a loop that reads [0] from each arrayOrgs record, prepends to preDetails record
 
 */
