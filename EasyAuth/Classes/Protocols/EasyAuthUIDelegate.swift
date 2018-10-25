//
//  EasyAuthUIDelegate.swift
//  EasyAuth
//
//  Created by Code95 on 10/23/18.
//

import Foundation

public protocol EasyAuthLayoutDelegate {
    func didSelectLogin()
    func didSelectForgetPassword()
    func didSelectRegister()
    func didSelectFacebook()
    func didSelectTwitter()
    func didSelectInstagram()
    func didSelectLinkidin()
    func didSelectGoogle()
}

extension EasyAuthLayoutDelegate{
    func didSelectFacebook(){}
    func didSelectTwitter(){}
    func didSelectInstgram(){}
    func didSelectLinkidin(){}
    func didSelectGoogle(){}
}
