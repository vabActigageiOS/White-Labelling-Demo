//
//  ReadSettings.swift
//  White Labelling Demo
//
//  Created by vaibhav singh on 01/02/18.
//  Copyright © 2018 vabappd. All rights reserved.
//

import UIKit
class Settings: NSObject{
    private override init() {}
    static let sharedInstance = Settings()
    func readSettings() -> [String:Any]?{
        var format = PropertyListSerialization.PropertyListFormat.xml
        var plistData:[String:AnyObject] = [:]
        var targetName = ""
        #if DEMO
            targetName = "Demo Settings"
        #else
            targetName = "Full Settings"
        #endif
        let plistPath: String? = Bundle.main.path(forResource: targetName, ofType: "plist")
        let plistXML = FileManager.default.contents(atPath: plistPath!)!
        do{
            plistData = try PropertyListSerialization.propertyList(from: plistXML, options: .mutableContainersAndLeaves, format: &format) as! [String:AnyObject]
            return plistData
        }catch{
            print("error reading setting plist file")
            return nil
        }
    }
}
