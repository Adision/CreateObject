//
//  AppDelegate.swift
//  CreateObject
//
//  Created by Apple on 2017/2/10.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window=UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor=UIColor.white
        window?.rootViewController=MainController()
        window?.makeKeyAndVisible()
        return true
    }

}

    func NJLog<P>(_ message:P,fileName:String=#file,methodName:String=#function,lineNumber:Int=#line){
    
        #if DEBUG
            print("\((fileName as NSString).pathComponents.last!)->\(methodName)[\(lineNumber)]:\(message)")
        #endif
    }
