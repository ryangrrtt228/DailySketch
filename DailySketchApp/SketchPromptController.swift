//
//  SketchPromptController.swift
//  DailySketchApp
//
//  Created by Batman on 3/22/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import Foundation


class SketchPromptController {
    
    private static let API_KEY = "tKc0wU7ghvmshIt54zXwZRu0Jly6p1wevdYjsnfRu7F4VkWKQ6"
    
    static func dailyRandomWord(dailyWordString: String, callback: (dailyPrompts:[DailyPrompt]?, NSError?) -> ()){
        
        //https://wordsapiv1.p.mashape.com/words/?random=true
        
        let stringUrl = "https://wordsapiv1.p.mashape.com/words/?random=true"
        if let url = NSURL(string: stringUrl){
            
            let dataTask = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
                if let error = error {
                    callback(dailyPrompts: nil, error)
                    return
                }
                guard let data = data else {
                    callback(dailyPrompts: nil,nil)
                    return
                }
                
                let jsonObject: AnyObject
                
                do{
                    jsonObject = try NSJSONSerialization.JSONObjectWithData(data, options: [])
                } catch(let error as NSError) {
                    callback(dailyPrompts: nil, error)
                    return
                    }
                callback(dailyPrompts:[], nil)
                
                }
                  dataTask.resume()
                
            }
            
          
        }
    }
