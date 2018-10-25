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
    }

    func didSelectInstagram() {
        print("Instagram")
    }

    func didSelectLinkidin() {
        print("Linkidin")
    }

    func didSelectGoogle() {
        print("Google")
    }


}
