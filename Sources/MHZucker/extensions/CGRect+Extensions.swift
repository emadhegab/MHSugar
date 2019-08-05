//
//  CGRect+Extensions.swift
//  Merchant-Platform
//
//  Created by Mohamed Emad Abdalla Hegab on 30.01.18.
//  Copyright © 2018 Merchant Platform. All rights reserved.
//

import CoreGraphics

extension CGRect {
    var roundedCornerRadius: CGFloat {
        return min(height, width) / 2
    }
}
