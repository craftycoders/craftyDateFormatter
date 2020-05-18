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
    //CHALLENGE: Make this framework expandable. User should be able to add their own formats
}

public extension Date {
    func formatToString(_ format: CraftyDateFormat, timeZone: TimeZone = TimeZone(abbreviation: "UTC")!) -> String? {
        let formatter: DateFormatter = DateFormatter(format.rawValue)
        formatter.timeZone = timeZone
        
        let result = formatter.string(from: self)
        
        if !result.isEmpty {
            return result
        }
        print("CraftyDateFormatter: Incorrect format. \(format.rawValue) \(self)")
        return nil
    }
    
    //TODO: Add more data calculations
}

public extension String {
    //Reference string must match the selected format. Otherwise, result will be nil.
    func formatToDate(_ format: CraftyDateFormat, timeZone: TimeZone = TimeZone(abbreviation: "UTC")!) -> Date? {
         let formatter: DateFormatter = DateFormatter(format.rawValue)
         formatter.timeZone = timeZone
         
        if let result = formatter.date(from: self) {
            return result
        }
        print("CraftyDateFormatter: Incorrect format. \(format.rawValue) \(self)")
        return nil
     }
}

extension DateFormatter {
    convenience init(_ format: String) {
        self.init()
        dateFormat = format
    }
}
