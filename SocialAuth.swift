//
//  SocialAuth.swift
//  EasyAuth
//
//  Created by apple on 10/22/18.
//

import Foundation

protocol SocialAuth {
    func didFinishLaunch()
    func handleOpenURL(_ app: UIApplication, url: URL, options: [UIApplicationOpenURLOptionsKey : Any])
}
