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
    
    static func dailyRandomWord(callback: (dailyPrompt:DailyPrompt?, NSError?) -> ()) {
        
        //https://wordsapiv1.p.mashape.com/words/?random=true
        
        let stringUrl = "https://wordsapiv1.p.mashape.com/words/?random=true"
        let url = "http://api.wordnik.com:80/v4/words.json/randomWord?hasDictionaryDef=true&includePartOfSpeech=noun&excludePartOfSpeech=pronoun&minCorpusCount=0&maxCorpusCount=-1&minDictionaryCount=1&maxDictionaryCount=-1&minLength=5&maxLength=10&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5"

        
        if let url = NSURL(string: url)
        {            
            let session = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
                if let error = error {
                    callback(dailyPrompt: nil, error)
                    return
                }
                guard let data = data else {
                    callback(dailyPrompt: nil,nil)
                    return
                }
                
                let jsonObject: AnyObject
                
                do{
                    jsonObject = try NSJSONSerialization.JSONObjectWithData(data, options: [])
                    print(jsonObject)
                } catch(let error as NSError) {
                    callback(dailyPrompt: nil, error)
                    return
                    }
                callback(dailyPrompt: nil, nil)
                
                }
                  session.resume()
                
            }
        
          
        }
    }
