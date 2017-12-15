//
//  LimitLenght.swift
//  Tax_Calculator_SE
//
//  Created by Ulad Daratsiuk-Demchuk on 2017-12-14.
//  Copyright © 2017 Ulad Daratsiuk. All rights reserved.
//

import UIKit

class LimitLenght: UITextField {
    
    //INPUT NOT MORE THAN 5

        var maxLength: Int = 5
        override func willMove(toSuperview newSuperview: UIView?) {
            addTarget(self, action: #selector(editingChanged), for: .editingChanged)
            editingChanged(self)
        }
        @objc func editingChanged(_ textField: UITextField) {
            guard let text = textField.text else { return }
            textField.text = String(text.prefix(maxLength))
        }
   
    //BLOCK PASTE FUNCTION
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.paste(_:)) {
            return false
        }
        return super.canPerformAction(action, withSender: sender)
    }
    
}
