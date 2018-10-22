

import UIKit
import TwitterCore


///This protocol is conformed by Social Classes
protocol SocialAuth {
    
    func handleOpenURL(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any])
    
    func didFinishLaunch()
    
}

