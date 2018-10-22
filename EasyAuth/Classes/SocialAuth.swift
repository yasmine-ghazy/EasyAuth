

import UIKit
import TwitterCore

<<<<<<< HEAD
public class SocialAuth {
    
=======


///This protocol is conformed by Social Classes
public protocol SocialAuth {
    func handleOpenURL(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any])
    func didFinishLaunch()
>>>>>>> 5c5ee86a8a2e3c7048e78d5198f9fce881993f6b
}
