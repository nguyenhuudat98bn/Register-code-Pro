//
//  radioButton.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/11/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class radioButton: UIButton {
    
    @IBInspectable
    var borderWidth: Float = 0 {
        didSet {
            self.layer.borderWidth = CGFloat(borderWidth)
        }
    }
    @IBInspectable
    var borderColor: UIColor = UIColor.black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            if cornerRadius == -1 {
                self.layer.cornerRadius = self.bounds.width < self.bounds.height ? self.bounds.width * 0.5 : self.bounds.height * 0.5
            } else {
                self.layer.cornerRadius = cornerRadius
            }
            self.clipsToBounds = true
        }
    }
}
