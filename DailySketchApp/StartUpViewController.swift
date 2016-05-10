//
//  StartUpViewController.swift
//  DailySketchApp
//
//  Created by Batman on 5/9/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit

class StartUpViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton = UIButton(frame: CGRectMake((UIScreen.mainScreen().bounds.width / 2 + 25) , (UIScreen.mainScreen().bounds.height / 2) + 145 , 120, 54))
        startButton.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI / 4))
        let titleFont = UIFont(name: "norwester", size: 48)
        let title = NSAttributedString(string: "START", attributes: [NSFontAttributeName : titleFont!, NSForegroundColorAttributeName : UIColor.whiteColor()])
        startButton.setAttributedTitle(title, forState: .Normal)
        startButton.addTarget(self, action: #selector(goToPromptView), forControlEvents: .TouchUpInside)
        self.view.addSubview(startButton)
        self.view.bringSubviewToFront(startButton)
        
        if UIScreen.mainScreen().nativeBounds.height == 960.0 {
            // code for iPhone 4 or 4S
            backgroundImageView.image = UIImage(named: "design2 startup4s")
            startButton = UIButton(frame: CGRectMake((UIScreen.mainScreen().bounds.width / 2 + 25) , (UIScreen.mainScreen().bounds.height / 2) + 100 , 120, 54))
        } else {
            // code for the rest
            backgroundImageView.image = UIImage(named: "design2 startup")
        }

        // Do any additional setup after loading the view.
    }
    
    func goToPromptView() {
        self.performSegueWithIdentifier("toPromptView", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
