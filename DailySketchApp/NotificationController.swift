//
//  NotificationController.swift
//  DailySketchApp
//
//  Created by Batman on 5/4/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import Foundation
import UIKit

class NotificationController {
    
    static let sharedController = NotificationController()
    
    func notification() {
        let notification = UILocalNotification()

        notification.fireDate = NSDate(timeIntervalSinceNow: 8.0)
        notification.repeatInterval = NSCalendarUnit.Day
        notification.timeZone = NSCalendar.currentCalendar().timeZone
        notification.alertBody = "Your Daily Sketch is ready for you"
       
        notification.hasAction = true
        notification.alertAction = "View"
        
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
        
    }
    
    
}