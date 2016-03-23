//
//  ViewController.swift
//  DailySketchApp
//
//  Created by Batman on 3/21/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomWordTextField: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        guard let randomWord = randomWordTextField.text else { return }
//        guard randomWord.characters.count > 0 else { return }
        
        SketchPromptController.dailyRandomWord { (dailyPrompt, error) in
            
        }
    }
}

   