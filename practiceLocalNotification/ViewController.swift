//
//  ViewController.swift
//  practiceLocalNotification
//
//  Created by Fumiya Yamanaka on 2016/05/06.
//  Copyright © 2016年 fumiya yamanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // アラート表示の許可をもらう.
        let setting = UIUserNotificationSettings(forTypes: [.Sound, .Alert], categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(setting)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func notificationButton(sender: AnyObject) {
        print("showNotification")
        
        // Notificationの生成する.
        let myNotification: UILocalNotification = UILocalNotification()
        
        // メッセージを代入する.
        myNotification.alertBody = "TEST"
        
        // Timezoneを設定をする.
        myNotification.timeZone = NSTimeZone.defaultTimeZone()
        
        // Notificationを表示する.
        UIApplication.sharedApplication().scheduleLocalNotification(myNotification)
    }
    
    
    @IBAction func notificaitonFireButton(sender: AnyObject) {
        print("showNotification FIRE")
        // Notificationの生成する.
        let myNotification: UILocalNotification = UILocalNotification()
        
        // メッセージを代入する.
        myNotification.alertBody = "TEST(Fire)"
        
        // 再生サウンドを設定する.
        myNotification.soundName = UILocalNotificationDefaultSoundName
        
        // Timezoneを設定する.
        myNotification.timeZone = NSTimeZone.defaultTimeZone()
        
        // 10秒後に設定する.
        myNotification.fireDate = NSDate(timeIntervalSinceNow: 10)
        
        // Notificationを表示する.
        UIApplication.sharedApplication().scheduleLocalNotification(myNotification)
    }
    internal func onClickMyButton(sender: UIButton){
        print("onClickMyButton")
        if sender.tag == 1 {
            print("ボタン1押した")
//            showNotification()
        } else if sender.tag == 2 {
//            showNotificationFire()
            print("ボタン2押した")
        }
    }


}

