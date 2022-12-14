/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import UIKit
import Alamofire
import Mapbox 

extension UIColor {
  
  class func RGB(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
    return RGBA(red: red, green: green, blue: blue, alpha: 255.0)
  }
  
  class func RGBA(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
    return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha / 255.0)
  }
  
  class func RGBAColorFromString(string: String?) -> UIColor? {
    guard let string = string else {
      return nil
    }
    
    var components = string.split(separator: ",").map(String.init)
    
    if components.count == 3 {
      components.append("255.0")
    }
    
    guard components.count == 4 else {
      return nil
    }
    
    let red = CGFloat((Float(components[0]) ?? 0) / 255.0)
    let green = CGFloat((Float(components[1]) ?? 0) / 255.0)
    let blue = CGFloat((Float(components[2]) ?? 0) / 255.0)
    let alpha = CGFloat((Float(components[3]) ?? 0) / 255.0)
    
    return UIColor(red: red, green: green, blue: blue, alpha: alpha)
  }
}
