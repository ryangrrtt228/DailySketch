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
        if let savedDate = (userDefaults.objectForKey("lastDateObserved") as? NSDate)
        {
            return savedDate
        }
        else
        {
            return NSDate()
        }
    }
    
    static func SaveDate(date: NSDate) {
        
        userDefaults.setObject(date, forKey: "lastDateObserved")
        userDefaults.synchronize()
    }
    
    static func LoadLastWord() -> String {
        return (userDefaults.stringForKey("lastWord"))!
  }
    
    static func SaveWord(word: String) {
        
        userDefaults.setObject(word, forKey: "lastWord")
        userDefaults.synchronize()
    }

}