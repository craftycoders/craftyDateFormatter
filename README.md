# craftyDateFormatter

[![CI Status](https://travis-ci.com/craftycoders/craftyDateFormatter.svg?branch=master)](https://travis-ci.org/craftycoders/craftyDateFormatter)
[![Version](https://img.shields.io/cocoapods/v/craftyDateFormatter.svg?style=flat)](https://cocoapods.org/pods/craftyDateFormatter)
[![License](https://img.shields.io/cocoapods/l/craftyDateFormatter.svg?style=flat)](https://cocoapods.org/pods/craftyDateFormatter)
[![Platform](https://img.shields.io/cocoapods/p/craftyDateFormatter.svg?style=flat)](https://cocoapods.org/pods/craftyDateFormatter)

Formatting dates has always been a pain. Writing extensions at the beginning of each project for the attempt to make things easy is ideal but repetitive. This library allows you to get the same results with way less effort. Clean and elegant human-readable formats.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Convert string to date. Simply define what format is being passed.
```swift
"2020-05-14T18:25:43.511Z".formatToDate(.formatJSONFriendly1)
```

Convert any date to desired string format. Format types already describe the output.
```swift
Date().formatToString(.format081420)
```

For ease of use, it has predefined human-readable, commonly used formats. For formats that aren't part of this list, simply enter the date format as a string.

![](/Example/formats.png "craftyDateFormatter formats") 

## Requirements
- iOS 12.0
- Swift 5.0

## Installation

craftyDateFormatter is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'craftyDateFormatter'
```

## License

craftyDateFormatter is available under the MIT license. See the LICENSE file for more info.
