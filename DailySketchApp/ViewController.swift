//
//  ViewController.swift
//  DailySketchApp
//
//  Created by Batman on 3/21/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomWordLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomWordLabel.text = DailyPrompt.randomWord()
        //randomWordLabel.text = ("Today's Sketch is a \(DailyPrompt.randomWord())")
        
        
    }
}

   