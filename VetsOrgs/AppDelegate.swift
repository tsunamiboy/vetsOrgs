//
//  AppDelegate.swift
//  VetsOrgs
//
//  Created by David Blake on 4/9/17.
//  Copyright © 2017 Sea Turtle Dreams. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
/*
        var dictOrgs = [String:String]()
        var arrayOrgs = NSMutableArray()
        var itemStr: String = ""
        var item = [String] ()
//        var arrayOrgs: Array<Any>
        let rawData = "Blinded Veterans Association,N/A,N/A,N/A,N/A,N/A\nCatholic War Veterans,N/A,N/A,N/A,N/A,N/A\nCenter for American Homeless Veterans,N/A,N/A,N/A,N/A,N/A\nDisabled American Veterans (DAV),N/A,N/A,N/A,N/A,N/A\nFleet Reserve Association,N/A,N/A,N/A,N/A,N/A\nGrand Army of the Republic,N/A,N/A,N/A,N/A,N/A\nIraq and Afghanistan Veterans of America,N/A,N/A,N/A,N/A,N/A"
        do {
//           From vetx-01 (Swift 2)
//           let readin = fullText.componentsSeparatedByString("\n") as [String]
            let fullText = rawData
            let readin = fullText.components(separatedBy: "\n")
            // Result has 3 strings.
            print(readin.count)
            print(readin)
            
            // Loop over string array.
//            for part in readin {
            for i in 0..<readin.count {
                print("line #\(i+1): \(readin[i])")
                
                /*
                 From vetx-01 (Swift 2)
                 for i in 1..<readin.count {
                 let orgsData = readin[i].componentsSeparatedByString(",")
                 
                 dictOrgs["OrgName"] = "\(orgsData[0])"
                 dictOrgs["website"] = "\(orgsData[1])"
                 dictOrgs["phone"]   = "\(orgsData[2])"
                 dictOrgs["email"]   = "\(orgsData[3])"
                 dictOrgs["twitter"] = "\(orgsData[4])"
                 dictOrgs["FBPage"]  = "\(orgsData[5])"
                 
                 arrayOrgs.addObjects(from: dictOrgs)
                 */
                let orgsData = readin[i].components(separatedBy: ",")
                
                itemStr = "\u{22}\(orgsData[0])\u{22}"
                print("itemStr = ", itemStr)
                
                dictOrgs["OrgName"] = "\(orgsData[0])"
                dictOrgs["website"] = "\(orgsData[1])"
                dictOrgs["phone"]   = "\(orgsData[2])"
                dictOrgs["email"]   = "\(orgsData[3])"
                dictOrgs["twitter"] = "\(orgsData[4])"
                dictOrgs["FBPage"]  = "\(orgsData[5])"
                
                print(dictOrgs)
                
                arrayOrgs.addObjects(from: [dictOrgs as Any])
                item.insert(itemStr, at: i)

            }
//            arrayOrgs.forEach() { print($0) }
//            print(arrayOrgs.description)
            print("------------------------")
            for element in item {
                print(element)
            }
            for element in arrayOrgs {
                print(element)
            }
        }
 */
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

