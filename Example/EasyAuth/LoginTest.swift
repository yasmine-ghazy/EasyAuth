//
//  LoginTest.swift
//  EasyAuth_Example
//
//  Created by Code95 on 10/22/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import EasyAuth
import Alamofire

class LoginTest:EasyAuthViewController {
    var li = LinkedInAuth(clientId: Constants.LI_clientId, clientSecret: Constants.LI_clientSecret, state: Constants.LI_state, permissions: Constants.LI_permissions, redirectUrl: Constants.LI_redirectUrl)
    
    var twtr = TwitterAuth(consumerKey: Constants.Twitter_consumerKey, consumerSecret: Constants.Twitter_consumerSecret)
    
    var inst = InstagramAuth(clientId: Constants.Insta_clientID, redirectUrl: Constants.Insta_redirectURI)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoImageView.image = #imageLiteral(resourceName: "Logo")
        appTitle.text = "Lorem ipsum"
        delegate = self
        
    }
}

extension LoginTest:EasyAuthLayoutDelegate{
    func didSelectLogin() {
        print("Login")
    }

    func didSelectForgetPassword() {
        print("Forget password")
    }

    func didSelectRegister() {
        print("Register")
    }

    func didSelectFacebook() {
        print("Facebook")
    }

    func didSelectTwitter() {
        print("Twitter")
        twtr.socialLogin()
    }

    func didSelectInstagram() {
        print("Instagram")
        inst.socialLogin(from: self) { (token) in
            
        }
    }

    func didSelectLinkidin() {
        print("Linkidin")
        li.socialLogin { (token) in
            print(token)
        }
    }

    func didSelectGoogle() {
        print("Google")
    }


}
