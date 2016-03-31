//
//  DailyPromptController.swift
//  DailySketchApp
//
//  Created by Batman on 3/30/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import Foundation

class DailyPromptController{
    
    var word: [DailyPrompt] = []
    
    static func randomWord() {
        
        let urlBase = "https://dailyskecth.firebaseio.com/.json"
        
        guard let data = NSData(contentsOfFile: urlBase)
            else {return}
        guard let json = try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) else {return}
        if let jsonDictionary = json as? [String] {
            var words: [DailyPrompt] = []
            for (word) in jsonDictionary {
                let word = DailyPrompt (prompt: word)
                words.append(word)
            }
            
        }
    
//        func randomWord() -> String {
//            let index = Int(arc4random_uniform(UInt32(DailyPrompt.count)))
//            let word = DailyPrompt[index]
//            return word

        }
    }
//}

    
