//
//  ViewController.swift
//  shopper
//
//  Created by Tifo Audi Alif Putra on 02/01/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var priceTextField: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateBtn.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calculateBtn
        priceTextField.inputAccessoryView = calculateBtn
        
        resultLabel.isHidden = true
        hourLabel.isHidden = true
    }
    
    @IBAction func clearCalculatorBtn(_ sender: Any) {
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        wageTextField.text = ""
        priceTextField.text = ""
    }
    
    @objc func calculate(){
        if let wageTextField = wageTextField.text, let priceTextField = priceTextField.text {
            if let wage = Double(wageTextField), let price = Double(priceTextField) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hourLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, forPrice: price))"
            }
        }
        
    }

}

