//
//  AppDelegate.swift
//  News
//
//  Created by 邹超 on 2020/3/16.
//  Copyright © 2020 newcloudnet. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.rootViewController = MyTabBarVC()
        window?.makeKeyAndVisible()
        return true
    }
}

