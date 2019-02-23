//
//  Date+Additions.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

extension Date {
    func dateAtBeginningOfDay() -> Date? {
        var calendar = Calendar.current
        // Or whatever you need
        // if server returns date in UTC better to use UTC too
        let timeZone = TimeZone(abbreviation: "UTC")!//NSTimeZone.system
        calendar.timeZone = timeZone

        // Selectively convert the date components (year, month, day) of the input date
        var dateComps = calendar.dateComponents([.year, .month, .day], from: self)
        // Set the time components manually
        dateComps.hour = 0
        dateComps.minute = 0
        dateComps.second = 0

        // Convert back
        let beginningOfDay = calendar.date(from: dateComps)
        return beginningOfDay
    }

    var startOfDay: Date {
        return Calendar.current.startOfDay(for: self)
    }
}
