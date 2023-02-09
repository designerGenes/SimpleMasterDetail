//
//  Colors.swift
//  SimpleMasterDetail
//
//  Created by Jaden Nation on 2/7/23.
//

import UIKit
import SwiftUI

extension UIColor {
    convenience init?(hexaRGB: String, alpha: CGFloat = 1) {
            var chars = Array(hexaRGB.hasPrefix("#") ? hexaRGB.dropFirst() : hexaRGB[...])
            switch chars.count {
            case 3: chars = chars.flatMap { [$0, $0] }
            case 6: break
            default: return nil
            }
            self.init(red: .init(strtoul(String(chars[0...1]), nil, 16)) / 255,
                    green: .init(strtoul(String(chars[2...3]), nil, 16)) / 255,
                     blue: .init(strtoul(String(chars[4...5]), nil, 16)) / 255,
                    alpha: alpha)
        }

        convenience init?(hexaRGBA: String) {
            var chars = Array(hexaRGBA.hasPrefix("#") ? hexaRGBA.dropFirst() : hexaRGBA[...])
            switch chars.count {
            case 3: chars = chars.flatMap { [$0, $0] }; fallthrough
            case 6: chars.append(contentsOf: ["F","F"])
            case 8: break
            default: return nil
            }
            self.init(red: .init(strtoul(String(chars[0...1]), nil, 16)) / 255,
                    green: .init(strtoul(String(chars[2...3]), nil, 16)) / 255,
                     blue: .init(strtoul(String(chars[4...5]), nil, 16)) / 255,
                    alpha: .init(strtoul(String(chars[6...7]), nil, 16)) / 255)
        }

        convenience init?(hexaARGB: String) {
            var chars = Array(hexaARGB.hasPrefix("#") ? hexaARGB.dropFirst() : hexaARGB[...])
            switch chars.count {
            case 3: chars = chars.flatMap { [$0, $0] }; fallthrough
            case 6: chars.append(contentsOf: ["F","F"])
            case 8: break
            default: return nil
            }
            self.init(red: .init(strtoul(String(chars[2...3]), nil, 16)) / 255,
                    green: .init(strtoul(String(chars[4...5]), nil, 16)) / 255,
                     blue: .init(strtoul(String(chars[6...7]), nil, 16)) / 255,
                    alpha: .init(strtoul(String(chars[0...1]), nil, 16)) / 255)
        }
    
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        return (red, green, blue, alpha)
    }
    
    static var neoYellow: UIColor {
        UIColor(hexaRGB: "#FFF73A", alpha: 1.0)!
    }
    
    static var blueLikeFascism: UIColor {
        UIColor(hexaRGBA: "#ffe700ff")!
    }
    
    static var backgroundDarkGray: UIColor {
        UIColor(hexaRGB: "#121212", alpha: 1)!
    }
    
    static var rowDarkGray: UIColor {
        UIColor(hexaRGBA: "#272727ff")!
    }
    
    static var textWhite: UIColor {
        UIColor(hexaRGBA: "#F5DDDDff")!
    }
}

extension Color {
    init(uiColor: UIColor) {
        self.init(red: Double(uiColor.rgba.red),
                  green: Double(uiColor.rgba.green),
                  blue: Double(uiColor.rgba.blue),
                  opacity: Double(uiColor.rgba.alpha))
    }
}
