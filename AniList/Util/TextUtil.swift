//
//  TextUtil.swift
//  AniList
//
//  Created by Kirtan Patel on 8/8/20.
//

import Foundation
import SwiftUI

class TextUtility {
    
    static func cleanDescription(_ text: String) -> Text {
        var resultingText = Text("")
        
        var italics = false
        var bold = false
        
        let separators = CharacterSet(charactersIn: "<>")
        let stringArray = text.components(separatedBy: separators)
        
        
        for i in 0..<stringArray.count {
            
            var tempText = Text(stringArray[i])
            
            if stringArray[i] == "br" {
                tempText = Text("\n")
            }
            else if stringArray[i] == "i" {
                italics = true
                continue
            }
            else if stringArray[i] == "/i" {
                italics = false
                continue

            }
            else if stringArray[i] == "b" {
                bold = true
                continue

            }
            else if stringArray[i] == "/b" {
                bold = false
                continue
            }
            
            
            if italics && stringArray[i] != "br" && stringArray[i] != "/i" && stringArray[i] != "b" {
                tempText = tempText.italic()
            }
            
            if bold && stringArray[i] != "br" && stringArray[i] != "/i" && stringArray[i] != "b" {
                tempText = tempText.bold()
            }
            
            resultingText = resultingText + tempText
            
        }
        
        
        return resultingText
    }
}
