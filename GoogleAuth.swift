//
//  GoogleAuth.swift
//  EasyAuth
//
//  Created by apple on 10/22/18.
//

import Foundation

class GoogleAuth: SocialAuth{
    
    func didFinishLaunch() {
    }
    
    func handleOpenURL(_ app: UIApplication, url: URL, options: [UIApplicationOpenURLOptionsKey : Any]){
//        GIDSignIn.sharedInstance().handle(url,sourceApplication:options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String,annotation: options[UIApplicationOpenURLOptionsKey.annotation])
    }
    
}


