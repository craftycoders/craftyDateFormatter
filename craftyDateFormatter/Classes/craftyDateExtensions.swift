//
//  craftyDateExtensions.swift
//  craftyDateFormatter
//
//  Created by Lyle Jover on 5/18/20.
//

import Foundation

public enum CraftyDateFormat: String {
    ///08/14/20 month/day/year
    case format081420 = "MM/dd/yy"
    ///08/14/2020 month/day/year
    case format08142020 = "MM/dd/yyyy"
    ///14/08/20 day/month/year
    case format140820 = "dd/MM/yy"
    ///14/08/2020 day/month/year
    case format14082020 = "dd/MM/yyyy"
    ///2020/08/14 year/month/day
    case format20200814 = "yyyy/MM/dd"
    ///08/14
    case format0814 = "MM/dd"
    ///Tue, 08/14
    case formatTue0814 = "EEE, MM/dd"
    ///Tue, Aug 14
    case formatTueAug14 = "EEE, MMM dd"
    ///Tue, Aug 14, 2020
    case formatTueAug142020 = "EEE, MMM dd, yyyy"
    ///Aug 14, 2020
    case formatAug142020 = "MMM dd, yyyy"
    ///Aug 14
    case formatAug14 = "MMM dd"
    ///Aug 2020
    case formatAug2020 = "MMM yyyy"
    ///August 2020
    case formatAugust2020 = "MMMM yyyy"
    ///August 14,  2020
    case formatAugust142020 = "MMMM dd, yyyy"
    ///August 14
    case formatAugust14 = "MMMM dd"
    ///2020-05-14T18:25:43.511Z
    case formatJSONFriendly1 = "yyyy-MM-dd'T'HH:mm:ss.SZ"
    ///2020-05-14T18:25:43Z
    case formatJSONFriendly2 = "yyyy-MM-dd'T'HH:mm:ssZ"
    ///2020-05-14T18:25:43
    case formatJSONFriendly3 = "yyyy-MM-dd'T'HH:mm:ss"
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
