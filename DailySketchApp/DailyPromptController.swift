//
//  DailyPromptController.swift
//  DailySketchApp
//
//  Created by Batman on 3/30/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.


import Foundation

class DailyPromptController{
    
    var word: [DailyPrompt] = []
    
    static func fetchPromptsFromFirebase(completion: (prompts: [DailyPrompt]) -> Void) {
        
        let urlBase = NSURL(string: "https://dailyskecth.firebaseio.com/.json")!
        
        NetworkController.dataAtUrl(urlBase) { (data) in
            if let data = data {
                guard let json = try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) else {return}
                if let jsonDictionary = json as? [String: AnyObject] {
                    if let dailyPrompts = jsonDictionary["dailyPrompts"] as? [String] {
                        var words: [DailyPrompt] = []
                        for (word) in dailyPrompts {
                            let word = DailyPrompt (prompt: word)
                            words.append(word)
                        }
                        completion(prompts: words)
                    } else {
                        // Awesome error handling Whoa
                        completion(prompts:[])
                    }
                }
            } else {
                // Awesome error handling Whoa
                completion(prompts: [])
            }
        }
    }
    
    func randomWord(array: [String]) -> String {
                let index = Int(arc4random_uniform(UInt32(array.count)))
                let word = array[index]
                return word
    
    }
    
}


