//
//  MailButton.swift
//  Tax_Calculator_SE
//
//  Created by Ulad Daratsiuk-Demchuk on 2017-09-07.
//  Copyright © 2017 Ulad Daratsiuk. All rights reserved.
//

import UIKit

@IBDesignable
class MailButton: UIButton {
    
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
        
    }
    
    
    @IBInspectable var borderWidth:CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
