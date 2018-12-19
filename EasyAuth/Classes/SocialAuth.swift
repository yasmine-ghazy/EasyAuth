

import UIKit
import TwitterCore


///This protocol is conformed by Social Classes
@objc public protocol SocialAuth {
    
    /**
     This function is called in AppDelegate class at function
     application(_ app: UIApplication, open url: URL, options: [])
     */
    @objc optional func handleOpenURL(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any])-> Bool
    
    /**
     This function is called in AppDelegate class at function
     application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?)
     */
    @objc optional func didFinishLaunch()
    
    ///This function open Social login app and returns user Token
    @objc optional func socialLogin()
    
    @objc optional func socialLogin(from viewController: UIViewController)
    
    ///This function returns UserToken as string
    func getUserToken()->String
    
}


