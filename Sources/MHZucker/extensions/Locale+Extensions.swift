//
//  Locale+Extensions.swift
//  Merchant-Platform
//
//  Created by Mohamed Emad Abdalla Hegab on 22.02.18.
//  Copyright © 2018 Merchant Operations. All rights reserved.
//

import Foundation

extension Locale {

    static func countryName(from countryCode: String) -> String {
        guard !countryCode.isEmpty else { return "Country Undefined" }
        let locale = Locale.current as NSLocale
        return locale.displayName(forKey: NSLocale.Key.countryCode, value: countryCode)!
    }

    static func currencyName(from currencyCode: String) -> String {
        guard !currencyCode.isEmpty else { return "Currency Undefined" }
        let locale = Locale.current as NSLocale
        return locale.displayName(forKey: NSLocale.Key.currencyCode, value: currencyCode)!
    }

    static func currencySymbol(from currencyCode: String) -> String {
        guard !currencyCode.isEmpty else { return "Currency Undefined" }
        let locale = Locale.current as NSLocale
        return locale.displayName(forKey: NSLocale.Key.currencySymbol, value: currencyCode)!
    }
}
