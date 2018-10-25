//
//  UIConfigurationSource.swift
//  EasyAuth
//
//  Created by Code95 on 10/23/18.
//

import Foundation
public protocol UIConfigurationSource {
    var mainColor: UIColor { get }
    var secondColor: UIColor { get }
    var titleColor: UIColor { get }
    var placeholderColor: UIColor { get }
    
    var logoImage:UIImage { get }
    var appTitle:String { get }
    
}
