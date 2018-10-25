//
//  UIButton + Extension.swift
//  EasyAuth
//
//  Created by Code95 on 10/25/18.
//

import Foundation
import  UIKit

extension UIButton {
    func AppButton(title:String, backgroundColor:UIColor, titleColor:UIColor) {
        self.backgroundColor = backgroundColor
        self.setTitleColor(titleColor, for: .normal)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 5
        self.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
    }
}
