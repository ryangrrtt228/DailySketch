//
//  NetworkController.swift
//  DailySketchApp
//
//  Created by Batman on 3/30/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//


import Foundation

class NetworkController {
    
    static func Url(searchTerm: String) -> NSURL? {
        var modifiedUrlString = "https://dailyskecth.firebaseio.com/.json"
        modifiedUrlString = modifiedUrlString.stringByReplacingOccurrencesOfString(" ", withString: "+")
        if let url = NSURL(string: modifiedUrlString) {
            return url
        } else {
            return nil
        }
    }
    
    static func dataAtUrl(url: NSURL, completion: (data: NSData?) -> Void) {
        let dataTask = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, _, error) in
            if let error = error {
                print("Data could not be retrieved due to error: \(error.localizedDescription)")
                completion(data: nil)
            } else {
                if let data = data {
                    completion(data: data)
                } else {
                    completion(data: nil)
                }
            }
        }
        dataTask.resume()
    }
}
