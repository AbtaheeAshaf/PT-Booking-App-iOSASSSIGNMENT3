//
//  Helper.swift
//  PTBookingApp
//
//  Created by Abtahee Ashaf on 9/5/2025.
//

import Foundation

extension Date {
    static func generateNext30Days() -> [Date] {
        let calendar = Calendar.current
        let today = Date()
        return (0..<30).compactMap {
            calendar.date(byAdding: .day, value: $0, to: today)
        }
    }
}


