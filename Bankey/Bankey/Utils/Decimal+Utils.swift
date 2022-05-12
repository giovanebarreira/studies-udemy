//
//  DecimalUtil.swift
//  Bankey
//
//  Created by Avanade on 06/04/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
