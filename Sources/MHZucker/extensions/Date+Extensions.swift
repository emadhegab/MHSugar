//
//  Date+Extensions.swift
//  Merchant-Platform
//
//  Created by Mohamed Emad Abdalla Hegab on 27.02.18.
//  Copyright © 2018 Merchant Operations. All rights reserved.
//

import Foundation

extension Date {

    var shortDate: String {
        // eg: Oct 23, 2017
        return shortDateFormatter.string(from: self)
    }

    var timeDate: String {
        // eg: Oct 23, 2017 – 12:23:25
        return timeDateFormatter.string(from: self)
    }

    var timeDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, yyyy - HH:mm:ss"
        return formatter
    }

    var shortDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter
    }

    func daysTo(date: Date) -> String {
        let range = Calendar.current.dateComponents([.day], from: self, to: date).day!
        return "\(range) Days"
    }
}
