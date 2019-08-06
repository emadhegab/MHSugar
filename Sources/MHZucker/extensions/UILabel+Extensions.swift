//
//  UILabel+Extensions.swift
//
//  Created by Mohamed Emad Abdalla Hegab on 05.02.18.
//

import UIKit

extension UILabel {
    func setTextSpacing(spacing: CGFloat) {
        let attributedString = NSMutableAttributedString(string: text!)
        if textAlignment == .center || textAlignment == .right {
            attributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSRange(location: 0, length: attributedString.length-1))
        } else {
            attributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSRange(location: 0, length: attributedString.length))
        }
        attributedText = attributedString
    }

    func setGradiant(startColor: UIColor, endColor: UIColor, horizontal: Bool) {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
        let gradientLayer: CAGradientLayer = CAGradientLayer()

        gradientLayer.frame = bounds
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        if horizontal {
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        } else {
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        }
        view.layer.addSublayer(gradientLayer)
        view.mask = self
    }

    func setFontBold() {
        guard let currentFont = self.font else { return }

        let newFont = UIFont(name: "\(currentFont.fontName)-Bold", size: currentFont.pointSize)
        self.font = newFont
    }

    func setFontRegular() {
        guard let currentFont = self.font else { return }

        let newFont = UIFont(name: "\(currentFont.fontName)-Regular", size: currentFont.pointSize)
        self.font = newFont
    }
}
