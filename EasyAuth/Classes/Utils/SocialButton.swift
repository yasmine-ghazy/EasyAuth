//
//  SocialButton.swift
//  EasyAuth
//
//  Created by Code95 on 10/23/18.
//

import UIKit

///This class customize the social button for login layout
class SocialButton: UIButton {
    
    /**
     Initialize a social button with image
     - parameter buttonImage: the UIImage of the social button
     */
    init(buttonImage: UIImage){
        super.init(frame: CGRect())
        self.setImage(buttonImage, for: .normal)
        self.imageView?.contentMode = .scaleAspectFit
        self.tintColor = Colors.ButtonBackground
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
