//
//  Camera.swift
//  DailySketchApp
//
//  Created by Batman on 5/10/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit
@IBDesignable

class Camera: UIView {

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        CameraKit.drawCamera(frame: self.bounds)
        // Drawing code
    }
    

}
