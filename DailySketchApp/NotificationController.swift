//
//  NotificationController.swift
//  DailySketchApp
//
//  Created by Batman on 5/4/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//
//
import Foundation
import UIKit

class NotificationController {
    
    static func scheduleNotification() {
        

            let notification = UILocalNotification()
            
            notification.fireDate = NSDate().dateByAddingTimeInterval(20)//(43200)
            //        //notification.repeatInterval = NSCalendarUnit.Minute
            //        //notification.timeZone = NSCalendar.currentCalendar().timeZone
            notification.alertBody = "Your Daily Sketch is ready for you"
            //        notification.hasAction = true
            notification.alertAction = "Help"
          //  notification.soundName = UILocalNotificationDefaultSoundName
            //
            //UIApplication.sharedApplication().cancelAllLocalNotifications()
//            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
//                scheduleNotification()
//            })
        
        }
        
    }
    
    
