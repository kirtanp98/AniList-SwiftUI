//
//  ColorExtension.swift
//  AniList
//
//  Created by Kirtan Patel on 7/25/20.
//

import Foundation
import SwiftUI

//https://www.hackingwithswift.com/example-code/uicolor/how-to-convert-a-hex-color-to-a-uicolor
extension Color {
    public init?(hex: String) {
        let r, g, b, a: Double

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = Double((hexNumber & 0xff000000) >> 24) / 255
                    g = Double((hexNumber & 0x00ff0000) >> 16) / 255
                    b = Double((hexNumber & 0x0000ff00) >> 8) / 255
                    a = Double(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, opacity: a)
                    return
                }
            }
        }

        return nil
    }
}
