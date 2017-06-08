//
//  ApplicationData.swift
//  VetsOrgs
//
//  Created by David Blake on 4/9/17.
//  Copyright © 2017 Sea Turtle Dreams. All rights reserved.
//
import Foundation

struct ApplicationData {
    var filePath: String!
    var orgNames: [String]
//    {
//        didSet {
//            orgNames.sort(by: { (value1, value2) in value1 < value2 })
//        }
//    }
//    var details: [String: [String]]
    var orgDetails: [String: [String]]
    
    var useExistingOrgs: Bool = true
//    var useExistingOrgs: Bool = false
    var useExistingDtls: Bool = true
//    var useExistingDtls: Bool = false
    
    init() {
//        items = ["Lettuce", "Tomatoes", "Milk", "Granola", "Donuts", "Cookies", "Butter"]
// MARK: OrgNames defaults
//        orgNames = ["org001","org002","org003","org004","org005","org006","org007","org008","org009","org010","org011","org012","org013","org014","org015","org016","org017","org018","org019","org020","org021","org022","org023","org024","org025","org026","org027","org028","org029","org030","org031","org032","org033","org034","org035","org036","org037","org038","org039","org040","org041","org042","org043","org044","org045","org046","org047","org048","org049","org050"]
//        orgNames = ["Air Force Association", "Air Force Sergeants Association", "American Ex-Prisoners of War", "American G.I. Forum", "American Legion", "American Veterans (AMVETS)", "American Veterans Committee",]
        orgNames = ["Air Force Association","Air Force Sergeants Association","American Ex-Prisoners of War","American G.I. Forum","American Legion","American Veterans (AMVETS)","American Veterans Committee","American Veterans for Equal Rights","Army and Navy Union of the United States of America","Association of the United States Army (AUSA)","Blinded Veterans Association","Catholic War Veterans","Center for American Homeless Veterans","Disabled American Veterans (DAV)","East Bay Housing Organizations","Fleet Reserve Association","Grand Army of the Republic","Iraq and Afghanistan Veterans of America","Iraq War Veterans Organization","Jewish War Veterans of the USA","Marine Corps League","Military Officers Association of America","Military Order of the Carabao","Military Order of the Cootie","Military Order of Foreign Wars","Military Order of the Loyal Legion of the United States","Military Order of the Purple Heart","Navy League of the United States","National Association for Black Veterans","National Guard Association of the United States","Navy Musicians Association","Navy Mutual Aid Association","North Bay Veterans Resource Center","Paralyzed Veterans of America","Pearl Harbor Survivors Association","Retired Enlisted Association","Society of American Military Engineers","Society of the Cincinnati","Student Veterans of America","Things We Read","The Retired Enlisted Association","United Confederate Veterans","United Spanish War Veterans","United States Submarine Veterans Inc.","United States Submarine Veterans of World War II","Veterans' Alliance for Security and Democracy","Veterans for Common Sense (VCS)","Veterans for Peace","Veterans of Foreign Wars of the United States (VFW)","Vietnamese American Armed Forces Association","Vietnam Veterans of America","Wounded Warrior Project"]

// MARK: OrgDetails defaults
//        orgDetails = ["org001":["N/A","N/A","N/A","N/A","N/A","N/A"],"org002":["N/A","N/A","N/A","N/A","N/A","N/A"],"org003":["N/A","N/A","N/A","N/A","N/A","N/A"],"org004":["N/A","N/A","N/A","N/A","N/A","N/A"],"org005":["N/A","N/A","N/A","N/A","N/A","N/A"],"org006":["N/A","N/A","N/A","N/A","N/A","N/A"],"org007":["N/A","N/A","N/A","N/A","N/A","N/A"],"org008":["N/A","N/A","N/A","N/A","N/A","N/A"],"org009":["N/A","N/A","N/A","N/A","N/A","N/A"],"org010":["N/A","N/A","N/A","N/A","N/A","N/A"],"org011":["N/A","N/A","N/A","N/A","N/A","N/A"],"org012":["N/A","N/A","N/A","N/A","N/A","N/A"],"org013":["N/A","N/A","N/A","N/A","N/A","N/A"],"org014":["N/A","N/A","N/A","N/A","N/A","N/A"],"org015":["N/A","N/A","N/A","N/A","N/A","N/A"],"org016":["N/A","N/A","N/A","N/A","N/A","N/A"],"org017":["N/A","N/A","N/A","N/A","N/A","N/A"],"org018":["N/A","N/A","N/A","N/A","N/A","N/A"],"org019":["N/A","N/A","N/A","N/A","N/A","N/A"],"org020":["N/A","N/A","N/A","N/A","N/A","N/A"],"org021":["N/A","N/A","N/A","N/A","N/A","N/A"],"org022":["N/A","N/A","N/A","N/A","N/A","N/A"],"org023":["N/A","N/A","N/A","N/A","N/A","N/A"],"org024":["N/A","N/A","N/A","N/A","N/A","N/A"],"org025":["N/A","N/A","N/A","N/A","N/A","N/A"],"org026":["N/A","N/A","N/A","N/A","N/A","N/A"],"org027":["N/A","N/A","N/A","N/A","N/A","N/A"],"org028":["N/A","N/A","N/A","N/A","N/A","N/A"],"org029":["N/A","N/A","N/A","N/A","N/A","N/A"],"org030":["N/A","N/A","N/A","N/A","N/A","N/A"],"org031":["N/A","N/A","N/A","N/A","N/A","N/A"],"org032":["N/A","N/A","N/A","N/A","N/A","N/A"],"org033":["N/A","N/A","N/A","N/A","N/A","N/A"],"org034":["N/A","N/A","N/A","N/A","N/A","N/A"],"org035":["N/A","N/A","N/A","N/A","N/A","N/A"],"org036":["N/A","N/A","N/A","N/A","N/A","N/A"],"org037":["N/A","N/A","N/A","N/A","N/A","N/A"],"org038":["N/A","N/A","N/A","N/A","N/A","N/A"],"org039":["N/A","N/A","N/A","N/A","N/A","N/A"],"org040":["N/A","N/A","N/A","N/A","N/A","N/A"],"org041":["N/A","N/A","N/A","N/A","N/A","N/A"],"org042":["N/A","N/A","N/A","N/A","N/A","N/A"],"org043":["N/A","N/A","N/A","N/A","N/A","N/A"],"org04¢":["N/A","N/A","N/A","N/A","N/A","N/A"],"org045":["N/A","N/A","N/A","N/A","N/A","N/A"],"org046":["N/A","N/A","N/A","N/A","N/A","N/A"],"org047":["N/A","N/A","N/A","N/A","N/A","N/A"],"org048":["N/A","N/A","N/A","N/A","N/A","N/A"],"org049":["N/A","N/A","N/A","N/A","N/A","N/A"],"org050":["N/A","N/A","N/A","N/A","N/A","N/A"]]
//        orgDetails = ["Air Force Association": ["N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "Air Force Sergeants Association": ["N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Ex-Prisoners of War": ["N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American G.I. Forum": ["N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Legion": ["N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Veterans (AMVETS)": ["N/A", "N/A", "N/A", "N/A", "N/A", "N/A"], "American Veterans Committee": ["N/A", "N/A", "N/A", "N/A", "N/A", "N/A"]]
    orgDetails = ["Air Force Association":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Air Force Sergeants Association":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"American Ex-Prisoners of War":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"American G.I. Forum":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"American Legion":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"American Veterans (AMVETS)":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"American Veterans Committee":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"American Veterans for Equal Rights":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Army and Navy Union of the United States of America":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Association of the United States Army (AUSA)":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Blinded Veterans Association":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Catholic War Veterans":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Center for American Homeless Veterans":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Disabled American Veterans (DAV)":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"East Bay Housing Organizations":["538 9th St., Oakland, CA 94607","housing","(510) 663-3830","N/A","N/A","N/A","N/A","N/A"],"Fleet Reserve Association":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Grand Army of the Republic":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Iraq and Afghanistan Veterans of America":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Iraq War Veterans Organization":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Jewish War Veterans of the USA":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Marine Corps League":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Military Officers Association of America":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Military Order of the Carabao":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Military Order of the Cootie":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Military Order of Foreign Wars":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Military Order of the Loyal Legion of the United States":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Military Order of the Purple Heart":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Navy League of the United States":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"National Association for Black Veterans":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"National Guard Association of the United States":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Navy Musicians Association":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Navy Mutual Aid Association":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"North Bay Veterans Resource Center":["2455 Bennet Valley Rd, Santa Rosa, CA 95404","employment","(707) 578-2786","N/A","N/A","N/A","N/A","N/A"],"Paralyzed Veterans of America":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Pearl Harbor Survivors Association":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Retired Enlisted Association":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Society of American Military Engineers":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Society of the Cincinnati":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Student Veterans of America":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Things We Read":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"The Retired Enlisted Association":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"United Confederate Veterans":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"United Spanish War Veterans":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"United States Submarine Veterans Inc.":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"United States Submarine Veterans of World War II":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Veterans' Alliance for Security and Democracy":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Veterans for Common Sense (VCS)":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Veterans for Peace":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Veterans of Foreign Wars of the United States (VFW)":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Vietnamese American Armed Forces Association":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Vietnam Veterans of America":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"],"Wounded Warrior Project":["N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"]]
        
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
}
var AppData = ApplicationData()
