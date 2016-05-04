//
//  ViewController.swift
//  DailySketchApp
//
//  Created by Batman on 3/21/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit

class PromptViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var randomWordLabel: UILabel!
    
    let currentDate = NSDate()
    let lastDateObserved: NSDate? = nil
    var firstRun = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationController.sharedController.notification()
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if checkDates(NSDate(), lastDateObserved: PersistenceController.LoadLastDate()) == false {
            DailyPromptController.fetchPromptsFromFirebase({ (prompts) in
                if let prompts = prompts
                {
                    let word = DailyPromptController.randomWord(prompts)
                    PersistenceController.SaveWord(word)
                    PersistenceController.SaveDate(self.currentDate)
                    dispatch_async(dispatch_get_main_queue(), {
                        self.randomWordLabel.text = word
                    })
                }
            })
        }
        else {
            if let word = PersistenceController.LoadLastWord() {
                
                self.randomWordLabel.text = word
            } else {
                
                DailyPromptController.fetchPromptsFromFirebase({ (prompts) in
                    if let prompts = prompts
                    {
                        let word = DailyPromptController.randomWord(prompts)
                        PersistenceController.SaveWord(word)
                        PersistenceController.SaveDate(self.currentDate)
                        dispatch_async(dispatch_get_main_queue(), {
                            self.randomWordLabel.text = word
                        })
                    }
                })
            }
        }
    }
    
    
    @IBAction func cameraButtonTapped(sender: UIButton) {
        
        self.performSegueWithIdentifier("toImageScreen", sender: nil)
    }
    
    func checkDates(currentDate: NSDate, lastDateObserved: NSDate) -> Bool {
        let current = getStringFromDate(currentDate)
        let last = getStringFromDate(lastDateObserved)
        if current == last {
            return true
        } else {
            return false
        }
        
    }
    
    func getStringFromDate(date: NSDate) -> String {
        let dateformatter = NSDateFormatter()
        dateformatter.dateStyle = .MediumStyle
        dateformatter.timeStyle = .NoStyle
        
        let dateString = dateformatter.stringFromDate(date)
        return dateString
    }
    
}


