//
//  Wage.swift
//  shopper
//
//  Created by Tifo Audi Alif Putra on 03/01/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import Foundation

class Wage {
    //class func = static function
    class func getHours(forWage wage: Double, forPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
