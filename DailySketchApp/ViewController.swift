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
    
    let currentDate = NSDate()
    let lastDateObserved: NSDate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    
//        randomWordLabel.text =
//        DailyPromptController.fetchPromptsFromFirebase { (prompts) in
//            print(prompts.count)
//        }
    
        if checkDates(NSDate(), lastDateObserved: PersistenceController.LoadLastDate()) == false {
            
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


