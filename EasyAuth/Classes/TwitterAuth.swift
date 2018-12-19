//
//  EasyAuth.swift
//  AFNetworking
//
//  Created by apple on 10/22/18.
//

import Foundation
import TwitterKit
import LinkedinSwift
import FBSDKCoreKit

public class TwitterAuth{
    
    fileprivate var consumerKey: String!
    fileprivate var consumerSecret: String!
    fileprivate var userToken: String!
    
    public init(consumerKey: String, consumerSecret: String){
        self.consumerKey = consumerKey
        self.consumerSecret = consumerSecret
    }
}

extension TwitterAuth: SocialAuth{
    
    public func handleOpenURL(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any])-> Bool{
        
        TWTRTwitter.sharedInstance().application(app, open: url, options: options)
        return true
        
    }
    
    public func didFinishLaunch(){
        
        TWTRTwitter.sharedInstance().start(withConsumerKey: consumerKey , consumerSecret: consumerSecret)
        
    }
    
    ///This function perform twitter signIn process and send userToken of twitter LoggedIn user to LoginVC
    public func socialLogin(){
        TWTRTwitter.sharedInstance().logIn {
            (session, error) -> Void in
            if (session != nil) {
                print("signed in as \(session?.userName)")
                print("Token", session?.authToken)
                
                //Sending userToken from to SocialAuthVC
                //self.socialAuthView?.setUserToken(token: (session?.authToken)!)
                self.userToken = (session?.authToken)!
            } else {
                print("error: \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
    
    public func getUserToken()-> String {
        if let token = userToken{
            return token
        }else{
            return ""
        }
    }
    
}

