//
//  DailyPromptController.swift
//  DailySketchApp
//
//  Created by Batman on 3/30/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.


import Foundation

class DailyPromptController {
    
    static let sharedController = DailyPromptController()
    
    var word: [DailyPrompt] = []
    
    static func fetchPromptsFromFirebase(completion: (prompts: [String]?) -> Void) {
        
        let urlBase = NSURL(string: "https://dailyskecth.firebaseio.com/.json")!
        
        NetworkController.dataAtUrl(urlBase) { (data) in
            if let data = data {
                guard let json = try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) else {return}
                if let jsonDictionary = json as? [String: AnyObject] {
                    if let dailyPrompts = jsonDictionary["dailyPrompts"] as? [String] {
                        completion(prompts: dailyPrompts)
                    } else {
                        completion(prompts:[])
                    }
                }
            } else {
                completion(prompts: [])
            }
        }
    }
    
    static func randomWord(array: [String]) -> String {
        let index = Int(arc4random_uniform(UInt32(array.count)))
        let word = array[index]
        return word

    }
    
    
}


