//
//  extension.swift
//  BMICaculator
//
//  Created by Neo on 2025/7/26.
//

import Foundation

extension Double {
    func rounding(toDecimal decimal: Int) -> Double {
        let numberOfDigits = pow(10.0, Double(decimal))
        return (self * numberOfDigits).rounded(.toNearestOrAwayFromZero) / numberOfDigits
    }
}
