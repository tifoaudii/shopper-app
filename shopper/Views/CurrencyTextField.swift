//
//  CurrencyTextField.swift
//  shopper
//
//  Created by Tifo Audi Alif Putra on 02/01/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {

    //lifecycle method, called after loaded
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 10
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes:[.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
   

}
