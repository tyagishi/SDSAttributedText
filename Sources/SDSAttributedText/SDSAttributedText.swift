//
//  SDSAttributedText.swift
//
//  Created by : Tomoaki Yagishita on 2021/01/06
//  © 2021  SmallDeskSoftware
//

import Foundation
import SwiftUI

public struct SDSAttributedText: NSViewRepresentable {
    let attributedString: NSAttributedString
    
    public init(_ attributedString: NSAttributedString) {
        self.attributedString = attributedString
    }
    
    public func makeNSView(context: NSViewRepresentableContext<SDSAttributedText>) -> NSTextField {
        let textField = NSTextField(labelWithAttributedString: attributedString)
        textField.isEditable = false
        textField.isSelectable = false
        textField.drawsBackground = true
        textField.backgroundColor = NSColor.clear
        return textField
    }
    
    public func updateNSView(_ nsView: NSTextField, context: NSViewRepresentableContext<SDSAttributedText>) {
        nsView.attributedStringValue = self.attributedString
    }
    
    public typealias NSViewType = NSTextField
}
