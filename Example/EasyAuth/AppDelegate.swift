//
//  AppDelegate.swift
//  EasyAuth
//
//  Created by Yasmin Ghazy on 10/22/2018.
//  Copyright (c) 2018 Yasmin Ghazy. All rights reserved.
//

import UIKit
import EasyAuth

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = LoginTest()
        window?.rootViewController = vc
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()

        var li = LinkedInAuth(clientId: Constants.LI_clientId, clientSecret: Constants.LI_clientSecret, state: Constants.LI_state, permissions: Constants.LI_permissions, redirectUrl: Constants.LI_redirectUrl)
        
        var twtr = TwitterAuth(consumerKey: Constants.Twitter_consumerKey, consumerSecret: Constants.Twitter_consumerSecret)
        
        var inst = InstagramAuth(clientId: Constants.Insta_clientID, redirectUrl: Constants.Insta_redirectURI)
        
        let fb = FacebookAuth()
        
        li.didFinishLaunch()
        twtr.didFinishLaunch()
        fb.didFinishLaunch()
        
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
         var twtr = TwitterAuth(consumerKey: Constants.Twitter_consumerKey, consumerSecret: Constants.Twitter_consumerSecret)
        if twtr.handleOpenURL(app, open: url, options: options){
            return true
        }
        return false
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

