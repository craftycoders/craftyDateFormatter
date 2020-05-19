//
//  craftyDateExtensions.swift
//  craftyDateFormatter
//
//  Created by Lyle Jover on 5/18/20.
//

import Foundation

public enum CraftyDateFormat: String {
    ///05/14/20
    case monthDayYear = "MM/dd/yy"
    ///2020-05-14T18:25:43.511Z
    case jsonFriendly1 = "yyyy-MM-dd'T'HH:mm:ss.SZ"
    ///2020-05-14T18:25:43Z
    case jsonFriendly2 = "yyyy-MM-dd'T'HH:mm:ssZ"
    ///2020-05-14T18:25:43
    case jsonFriendly3 = "yyyy-MM-dd'T'HH:mm:ss"
    
    //TODO: Add more date formats
}

public extension Date {
    ///craftyDateFormatter:
    ///Using the predefined commonly used formats in the enum CraftyDateFormat
    func formatToString(_ outputStringFormat: CraftyDateFormat, timeZone: TimeZone = TimeZone(abbreviation: "UTC")!) -> String? {
        formatToString(outputStringFormat.rawValue, timeZone: timeZone)
    }
    
    ///craftyDateFormatter:
    ///For formats not defined in the enum CraftyDateFormat. Adding new cases to the enum is also another option.
    func formatToString(_ outputStringFormat: String, timeZone: TimeZone = TimeZone(abbreviation: "UTC")!) -> String? {
        let formatter: DateFormatter = DateFormatter(outputStringFormat)
        formatter.timeZone = timeZone
        
        let result = formatter.string(from: self)
        
        if !result.isEmpty {
            return result
        }
        print("CraftyDateFormatter: Incorrect format. \(outputStringFormat) \(self)")
        return nil
    }
    
    //TODO: Add more data calculations
}

public extension String {
    ///craftyDateFormatter:
    ///Required inputStringFormat should match the string format. Otherwise, result will be nil.
    ///Output: yyyy-MM-dd HH:mm:ss ZZZZ
    func formatToDate(_ inputStringFormat: CraftyDateFormat, timeZone: TimeZone = TimeZone(abbreviation: "UTC")!) -> Date? {
        formatToDate(inputStringFormat.rawValue, timeZone: timeZone)
    }
    
    ///craftyDateFormatter:
    ///Required inputStringFormat should match the string format. Otherwise, result will be nil.
    ///Output: yyyy-MM-dd HH:mm:ss ZZZZ
    func formatToDate(_ inputStringFormat: String, timeZone: TimeZone = TimeZone(abbreviation: "UTC")!) -> Date? {
         let formatter: DateFormatter = DateFormatter(inputStringFormat)
         formatter.timeZone = timeZone
         
        if let result = formatter.date(from: self) {
            return result
        }
        print("CraftyDateFormatter: Incorrect format. \(inputStringFormat) \(self)")
        return nil
     }
}

extension DateFormatter {
    convenience init(_ format: String) {
        self.init()
        dateFormat = format
    }
}
