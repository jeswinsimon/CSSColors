//  UIColor+CSSColors.swift
//
// This project is licensed under the MIT license.
//
// Copyright (c) 2016 Jeswin Simon <jeswinsimon@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
// W3C CSS Color Specification: http://www.w3.org/TR/css3-color/

import Foundation
import UIKit

extension UIColor {
    
    // MARK: RGB Initializers
    
    /**
     Class method for creating UIColor from RGBA color values. UIColor.rgba(255, 255, 255, 1.0)
     
     Using a Class method instead of an initializer to avoid conflict with init(red, green, blue, alpha) and also for consistancy with CSS rgba(rr, gg, bb, aa)
     
     - parameter red:   Red color value(0 - 255)
     - parameter green: Green color value(0 - 255)
     - parameter blue:  Blue color value(0 - 255)
     - parameter alpha: Alpha or opacity value(0.0 - 1.0)
     
     - returns: UIColor
 
     */
    
    public class func rgba(red: Int, _ green: Int, _ blue: Int, _ alpha: CGFloat) -> UIColor {
        return UIColor(red: colorPercent(red), green: colorPercent(green), blue: colorPercent(blue), alpha: alpha)
    }
    
    /**
     Class method for creating UIColor from RGB color values. UIColor.rgb(255, 255, 255)
     
     Using a Class method instead of an initializer to avoid conflict with init(red, green, blue, alpha) and also for consistancy with CSS rgb(rr, gg, bb)
     
     - parameter red:   Red color value(0 - 255)
     - parameter green: Green color value(0 - 255)
     - parameter blue:  Blue color value(0 - 255)
     
     - returns: UIColor
     
     */
    
    public class func rgb(red: Int, _ green: Int, _ blue: Int) -> UIColor {
        return UIColor.rgba(red, green, blue, 1.0)
    }
    
    /**
     Implements all Basic CSS Colors including the ones already provided by UIColor.
     Every method allows an optional parameter for Alpha
     
     Color name is suffixed with 'CSSColor' to differentiate from standard UIColors
     Colors which are already provided by UIColor are specified in comments
     
     */
    
    // MARK: Basic CSS Colors
    
    /*  
     1. Black #000000 0,0,0
     UIColor.blackColor()
     */
    
    public class func blackCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(white: 0.0, alpha: alpha)
    }
    
    /* 
     2. Silver #C0C0C0 192,192,192
     */
    public class func silverCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(white: colorPercent(192), alpha: alpha)
    }
    
    /*
     3. Gray #808080 128,128,128
     UIColor.grayColor()
     */
    public class func grayCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(white: 0.5, alpha: alpha)
    }
    
    /* 
     4. White #FFFFFF 255,255,255
     UIColor.whiteColor()
     */
    public class func whiteCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(white: 1.0, alpha:alpha)
    }
    
    /*
     5. Maroon #800000 128,0,0
     */
    public class func maroonCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 0.5, green: 0.0, blue: 0.0, alpha: alpha)
    }
    
    /* 
     6. Red #FF0000 255,0,0
     UIColor.redColor()
    */
    public class func redCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: alpha)
    }
    
    /* 
     7. Purple #800080 128,0,128
     UIColor.purpleColor()
     */
    public class func purpleCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 0.5, green: 0.0, blue: 0.5, alpha: alpha)
    }
    
    /* 
     8. Fuchsia #FF00FF 255,0,0
     UIColor.magentaColor()
     */
    public class func fuchsiaCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 1.0, green: 0.0, blue:1.0, alpha: alpha)
    }
    
    /* 
     9. Green #008000 0,128,0
     */
    public class func greenCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 0.0, green: 0.5, blue:0.0, alpha: alpha)
    }
    
    /* 
     10. Lime #00FF00 0,255,0
     UIColor.greenColor()
     */
    public class func limeCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 0.0, green: 1.0, blue:0.0, alpha: alpha)
    }
    
    /* 
     11. Olive #808000 128,128,0
     */
    public class func oliveCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 0.5, green: 0.5, blue:0.0, alpha: alpha)
    }
    
    /* 
     12. Yellow #FFFF00 255,255,0
     UIColor.yellowColor()
     */
    public class func yellowCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: alpha)
    }
    
    /* 
     13. Navy #000080 0,0,128
     */
    public class func navyCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 0.0, green: 0.0, blue:0.5, alpha: alpha)
    }
    
    /* 
     14. Blue #0000FF 0,0,255
     UIColor.blueColor()
     */
    public class func blueCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: alpha)
    }
    
    /* 
     15. Teal #008080	0,128,128
     */
    public class func tealCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 0.0, green: 0.5, blue:0.5, alpha:alpha)
    }
    
    /* 
     16. Aqua #00FFFF	0,255,255
     UIColor.cyanColor()
     */
    public class func aquaCSSColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 0.0, green: 1.0, blue:1.0, alpha: alpha)
    }
    
    
    // MARK Private Methods
    
    private class func colorPercent(colorValue: Int) -> CGFloat {
        
        if colorValue <= 0 {
            return 0
        }
        
        if colorValue >= 255 {
            return 255
        }
        
        return CGFloat(colorValue) / 255
    }
}
