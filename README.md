# CSSColors

[![CI Status](http://img.shields.io/travis/jeswinsimon/CSSColors.svg?style=flat)](https://travis-ci.org/jeswinsimon/CSSColors)
[![Version](https://img.shields.io/cocoapods/v/CSSColors.svg?style=flat)](http://cocoapods.org/pods/CSSColors)
[![License](https://img.shields.io/cocoapods/l/CSSColors.svg?style=flat)](http://cocoapods.org/pods/CSSColors)
[![Platform](https://img.shields.io/cocoapods/p/CSSColors.svg?style=flat)](http://cocoapods.org/pods/CSSColors)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

CSSColors is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CSSColors"
```
## Description

#### RGB Initializer

```swift
let aliceblue = UIColor.rgb(240, 248, 255)
```

#### RGBA Initializer

```swift
let aliceblue = UIColor.rgba(240, 248, 255, 0.5)
```

#### Basic CSS Colors

```swift
let blackColor = UIColor.blackCSSColor()
let silverColor = UIColor.silverCSSColor()
let grayColor = UIColor.grayCSSColor()
let whiteColor = UIColor.whiteCSSColor()
let maroonColor = UIColor.maroonCSSColor()
let redColor = UIColor.redCSSColor()
let purpleColor = UIColor.purpleCSSColor()
let fuchsiaColor = UIColor.fuchsiaCSSColor()
let greenColor = UIColor.greenCSSColor()
let limeColor = UIColor.limeCSSColor()
let oliveColor = UIColor.oliveCSSColor()
let yellowColor = UIColor.yellowCSSColor()
let navyColor = UIColor.navyCSSColor()
let blueColor = UIColor.blueCSSColor()
let tealColor = UIColor.tealCSSColor()
let aquaColor = UIColor.aquaCSSColor()
```

## Updates

Updates are planned to add the following enhancements

- Extended Colors to include all X11 color names.
- Updated Demo application to include RGB and RGBA initializers.

## Note

RGB and RGBA initializers are included as Class methods rather than initializers to avoid conflicts with existing initializers. Basic colors include all basic colors listed in the W3C CSS specification including the ones already provided by UIColor. 

Any suggestions for improvements are welcome. Kindly email me at jeswinsimon@gmail.com or contact me on twitter [@jeswinsimon](https://www.twitter.com/jeswinsimon) regarding queries and suggestions.

## License

CSSColors is available under the MIT license. See LICENSE for more info.
