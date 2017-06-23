//
//  ApplicationData.swift
//  VetsOrgs
//
//  Created by David Blake on 4/9/17.
//  Copyright © 2017 Sea Turtle Dreams. All rights reserved.
//
import Foundation

struct ApplicationData {
    var filteredOrgs: [String] = []
    var orgDetails: [String: [String]]
    private var filePath: String!
    private var orgNames: [String]
//    {
//        didSet {
//            orgNames.sort(by: { (value1, value2) in value1 < value2 })
//        }
//    }
//    var details: [String: [String]]
  
//    Following bools used to switch from built-in value to saved values
//    values used are values saved
    var useExistingOrgs: Bool = true
//    var useExistingOrgs: Bool = false
    var useExistingDtls: Bool = true
//    var useExistingDtls: Bool = false
    
    
    init() {
// MARK: OrgNames defaults
//        orgNames = ["org001","org002","org003","org004","org005","org006","org007","org008","org009","org010","org011","org012","org013","org014","org015","org016","org017","org018","org019","org020","org021","org022","org023","org024","org025","org026","org027","org028","org029","org030","org031","org032","org033","org034","org035","org036","org037","org038","org039","org040","org041","org042","org043","org044","org045","org046","org047","org048","org049","org050"]
        orgNames = ["Air Force Association","Air Force Sergeants Association","American Ex-Prisoners of War","American G.I. Forum","American Legion","American Veterans (AMVETS)","American Veterans Committee","American Veterans for Equal Rights","Army and Navy Union of the United States of America","Association of the United States Army (AUSA)","Blinded Veterans Association","Catholic War Veterans","Center for American Homeless Veterans","Disabled American Veterans (DAV)","East Bay Housing Organizations","Fleet Reserve Association","Grand Army of the Republic","Iraq and Afghanistan Veterans of America","Iraq War Veterans Organization","Jewish War Veterans of the USA","Marine Corps League","Military Officers Association of America","Military Order of the Carabao","Military Order of the Cootie","Military Order of Foreign Wars","Military Order of the Loyal Legion of the United States","Military Order of the Purple Heart","Navy League of the United States","National Association for Black Veterans","National Guard Association of the United States","Navy Musicians Association","Navy Mutual Aid Association","North Bay Veterans Resource Center","Paralyzed Veterans of America","Pearl Harbor Survivors Association","Retired Enlisted Association","Society of American Military Engineers","Society of the Cincinnati","Student Veterans of America","Things We Read","The Retired Enlisted Association","United Confederate Veterans","United Spanish War Veterans","United States Submarine Veterans Inc.","United States Submarine Veterans of World War II","Veterans' Alliance for Security and Democracy","Veterans for Common Sense (VCS)","Veterans for Peace","Veterans of Foreign Wars of the United States (VFW)","Vietnamese American Armed Forces Association","Vietnam Veterans of America","Wounded Warrior Project"]

// MARK: OrgDetails defaults

        orgDetails = ["Air Force Association":["","","","","","","",""],"Air Force Sergeants Association":["","","","","","","",""],"American Ex-Prisoners of War":["","","","","","","",""],"American G.I. Forum":["","","","","","","",""],"American Legion":["","","","","","","",""],"American Veterans (AMVETS)":["","","","","","","",""],"American Veterans Committee":["","","","","","","",""],"American Veterans for Equal Rights":["","","","","","","",""],"Army and Navy Union of the United States of America":["","","","","","","",""],"Association of the United States Army (AUSA)":["","","","","","","",""],"Blinded Veterans Association":["","","","","","","",""],"Catholic War Veterans":["","","","","","","",""],"Center for American Homeless Veterans":["","","","","","","",""],"Disabled American Veterans (DAV)":["","","","","","","",""],"East Bay Housing Organizations":["538 9th St., Oakland, CA 94607","housing","(510) 663-3830","","","","",""],"Fleet Reserve Association":["","","","","","","",""],"Grand Army of the Republic":["","","","","","","",""],"Iraq and Afghanistan Veterans of America":["","","","","","","",""],"Iraq War Veterans Organization":["","","","","","","",""],"Jewish War Veterans of the USA":["","","","","","","",""],"Marine Corps League":["","","","","","","",""],"Military Officers Association of America":["","","","","","","",""],"Military Order of the Carabao":["","","","","","","",""],"Military Order of the Cootie":["","","","","","","",""],"Military Order of Foreign Wars":["","","","","","","",""],"Military Order of the Loyal Legion of the United States":["","","","","","","",""],"Military Order of the Purple Heart":["","","","","","","",""],"Navy League of the United States":["","","","","","","",""],"National Association for Black Veterans":["","","","","","","",""],"National Guard Association of the United States":["","","","","","","",""],"Navy Musicians Association":["","","","","","","",""],"Navy Mutual Aid Association":["","","","","","","",""],"North Bay Veterans Resource Center":["2455 Bennet Valley Rd, Santa Rosa, CA 95404","employment","(707) 578-2786","","","","",""],"Paralyzed Veterans of America":["","","","","","","",""],"Pearl Harbor Survivors Association":["","","","","","","",""],"Retired Enlisted Association":["","","","","","","",""],"Society of American Military Engineers":["","","","","","","",""],"Society of the Cincinnati":["","","","","","","",""],"Student Veterans of America":["","","","","","","",""],"Things We Read":["","","","","","","",""],"The Retired Enlisted Association":["","","","","","","",""],"United Confederate Veterans":["","","","","","","",""],"United Spanish War Veterans":["","","","","","","",""],"United States Submarine Veterans Inc.":["","","","","","","",""],"United States Submarine Veterans of World War II":["","","","","","","",""],"Veterans' Alliance for Security and Democracy":["","","","","","","",""],"Veterans for Common Sense (VCS)":["","","","","","","",""],"Veterans for Peace":["","","","","","","",""],"Veterans of Foreign Wars of the United States (VFW)":["","","","","","","",""],"Vietnamese American Armed Forces Association":["","","","","","","",""],"Vietnam Veterans of America":["","","","","","","",""],"Wounded Warrior Project":["","","","","","","",""]]
        
        filterData(search: "")
        
// MARK: set filepath
        let manager = FileManager.default
        let documents = manager.urls(for: .documentDirectory, in: .userDomainMask)
        let docURL = documents.first!
        
// MARK: OrgNames fetch
        let fileOrgURL = docURL.appendingPathComponent("orgNames.dat")
        filePath = fileOrgURL.path
        if useExistingOrgs && manager.fileExists(atPath: filePath) {
            orgNames = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! [String]
            print(filePath)
            print("orgNames readin = ",orgNames)
        } else {
            NSKeyedArchiver.archiveRootObject(orgNames, toFile: filePath)
            print(filePath)
            print("orgNames reset = ",orgNames)
        }
// MARK: OrgDetails fetch
        let fileDtlURL = docURL.appendingPathComponent("orgDetails.dat")
        filePath = fileDtlURL.path
        if useExistingDtls && manager.fileExists(atPath: filePath) {
            orgDetails = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! [String:[String]]
            print(filePath)
            print("orgDetails readin = ",orgDetails)
        } else {
            NSKeyedArchiver.archiveRootObject(orgDetails, toFile: filePath)
            print(filePath)
            print("orgDetails reset = ",orgDetails)
        }
//        orgNames.sort(by: { (value1, value2) in value1 < value2 })
    }
    mutating func filterData(search: String) {
        if search == "" {
            filteredOrgs = orgNames
        } else {
            filteredOrgs = orgNames.filter({ (item) in
                let value1 = item.lowercased()
                let value2 = search.lowercased()
                let valid = value1.hasPrefix(value2)
                return valid
            })
        }
        filteredOrgs.sort(by: { (value1, value2) in value1 < value2 })
    }
    mutating func updateDetails(org: String, arr: Array<String>!) {
        orgDetails[org]?.removeAll()
        orgDetails[org]?.append(arr[0])
        orgDetails[org]?.append(arr[1])
        orgDetails[org]?.append(arr[2])
        orgDetails[org]?.append(arr[3])
        orgDetails[org]?.append(arr[4])
        orgDetails[org]?.append(arr[5])
        orgDetails[org]?.append(arr[6])
        orgDetails[org]?.append(arr[7])
        NSKeyedArchiver.archiveRootObject(orgDetails, toFile: filePath)
    }
}
var AppData = ApplicationData()
