//
//  PersistenceController.swift
//  DailySketchApp
//
//  Created by Batman on 3/28/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import Foundation

class PersistenceController {
    
    static let userDefaults = NSUserDefaults.standardUserDefaults()
    
    static func LoadLastDate() -> NSDate {
        return (userDefaults.objectForKey("lastDateObserved") as? NSDate)!
    }
    
    static func SaveDate(date: NSDate) {
        
        userDefaults.setObject(date, forKey: "lastDateObserved")
        userDefaults.synchronize()
    }
    
    static func LoadLastWord() -> String {
        return (userDefaults.stringForKey("lastWord") as! NSString)
  }
    
    static func SaveWord(

}