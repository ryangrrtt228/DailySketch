//
//  ViewController.swift
//  DailySketchApp
//
//  Created by Batman on 3/21/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var randomWordLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomWordLabel.text = DailyPrompt.randomWord()
    }
    
        func checkLastRetrieval() {
            let drawingPrompt = DailyPrompt.drawingPrompt.count
            let userDefaults = NSUserDefaults.standardUserDefaults()
            
            if let lastRetrieval = userDefaults.dictionaryForKey("lastRetrieval"){
                if let lastDate = lastRetrieval["Date"] as? NSDate{
                    if let index = lastRetrieval["index"] as? Int {
                        if abs(lastDate.timeIntervalSinceNow) > 86400 {
                            
                            var nextIndex = index + 1
                            
                            if drawingPrompt <= nextIndex {
                                nextIndex = 0
                                
                            }
                            self.randomWordLabel.text = DailyPrompt.drawingPrompt[nextIndex]
                            
                            let lastRetrieval : [NSObject : AnyObject] = [ "date": NSDate(), "index": nextIndex]
                            userDefaults.setObject(lastRetrieval, forKey: "lastRetrieval")
                            userDefaults.synchronize()
                        }
                    }
                }
            } else {
                self.randomWordLabel.text = DailyPrompt.drawingPrompt.first!
                
                let lastRetrieval : [NSObject: AnyObject] = [ "date": NSDate(), "index": 0]
                
                userDefaults.setObject(lastRetrieval, forKey: "lastRetrieval")
                userDefaults.synchronize()
            }
        }
        
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.checkLastRetrieval), name: "CheckLastQuoteRetrieval", object: nil)
        checkLastRetrieval()
        
    }
    
    
    @IBAction func cameraButtonTapped(sender: UIButton) {
        
        self.performSegueWithIdentifier("toImageScreen", sender: nil)
    }

   
}