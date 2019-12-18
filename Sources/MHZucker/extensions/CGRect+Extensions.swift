//
//  CGRect+Extensions.swift
//
//  Created by Mohamed Emad Abdalla Hegab on 30.01.18.
//

import CoreGraphics

public extension CGRect {
    var roundedCornerRadius: CGFloat {
        return min(height, width) / 2
    }
}
