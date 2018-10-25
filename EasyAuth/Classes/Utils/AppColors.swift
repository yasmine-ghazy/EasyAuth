//
//  AppColors.swift
//  EasyAuth
//
//  Created by Code95 on 10/23/18.
//

import UIKit

/// This class contains app palete colors that will be changed by the user
class AppColors{
    static var mainColor: UIColor = #colorLiteral(red: 0.000113729955, green: 0.5750550628, blue: 0.7006892562, alpha: 1)
    static var secondColor: UIColor = UIColor.white
    static var placeHolderColor: UIColor = UIColor.lightGray
    static var titleColor: UIColor = UIColor.black
}

/// This enumeration contains all paletes available in the app
public enum Palete:Int {
    case main = 0
    case second = 1
}

/// This class contains color schema paletes
class Colors{
    static var BackGroud: UIColor!
    static var divider: UIColor!
    static var ButtonBackground: UIColor!
    static var ButtonTitle: UIColor!
    static var text: UIColor!
    static var PlaceholderActive: UIColor!
    static var PlaceholderNormal: UIColor!
    static var backBtn: UIColor!
    
    /**
     This method set the palete type which will initialize the palete colors
     - parameter palete: .main or .second
     */
    public static func setPalete(palete: Palete){
        switch palete {
        case .main:
            BackGroud = AppColors.mainColor
            PlaceholderActive = AppColors.secondColor
            PlaceholderNormal = AppColors.secondColor
            divider = AppColors.secondColor
            ButtonBackground = AppColors.secondColor
            ButtonTitle = AppColors.mainColor
            text = AppColors.secondColor
            backBtn = AppColors.secondColor
            break
        case .second:
            BackGroud = AppColors.secondColor
            PlaceholderActive = AppColors.mainColor
            PlaceholderNormal = AppColors.placeHolderColor
            divider = AppColors.mainColor
            ButtonBackground = AppColors.mainColor
            ButtonTitle = AppColors.secondColor
            text = AppColors.titleColor
            backBtn = AppColors.mainColor
            break
        }
    }
    
}

