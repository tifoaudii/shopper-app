//
//  CurrencyTextField.swift
//  shopper
//
//  Created by Tifo Audi Alif Putra on 02/01/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit

//add class atributte to show changes in interface builder
@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        //called after there are any logic changes happen in this class
        customeView()
    }

    //lifecycle method, called after the textfield loaded
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customeView()
    }
    
    private func customeView(){
        //custom textfield
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 10
        textAlignment = .center
        
        //check the value of placeholder
        //if placeholder not nill, then it assigned to p
        if let p = placeholder {
            
            //placeholder not nil
            let place = NSAttributedString(string: p, attributes:[.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
   

}
