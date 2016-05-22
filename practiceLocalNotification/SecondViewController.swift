//
//  SecondViewController.swift
//  practiceLocalNotification
//
//  Created by Fumiya Yamanaka on 2016/05/22.
//  Copyright © 2016年 fumiya yamanaka. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.showNotification()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func showNotification() {
        let notif = UILocalNotification()
        //        notif.fireDate = NSDate(timeIntervalSinceNow: 5) //5秒後
        
        let now = NSDate()
        let calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)
        
        let unit = NSCalendarUnit([.Hour, .Minute])
        let comps:NSDateComponents = calendar!.components(unit, fromDate: now)
        
        comps.calendar = calendar
        comps.hour = 18
        comps.minute = 20
        
        notif.timeZone = NSTimeZone.defaultTimeZone()
        notif.alertBody = "通知のメッセージだよ 18:20"
        notif.alertAction = "OK"
        notif.soundName = UILocalNotificationDefaultSoundName

        UIApplication.sharedApplication().scheduleLocalNotification(notif)
        
        print(notif)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
