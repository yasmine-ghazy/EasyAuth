//
//  BaseLayout.swift
//  Employment fair
//
//  Created by Code95 on 9/9/18.
//  Copyright © 2018 Code95. All rights reserved.
//

import Foundation
import UIKit

public class BaseLayout {
    
    var superview: UIView!
    
    init(superview: UIView) {
        self.superview = superview
        superview.backgroundColor = .white
    }
}
