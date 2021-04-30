//
//  Paragraphable.swift
//  Lux
//
//  Created by 陈玉龙 on 2021/4/30.
//

import Foundation


public class LuxParagraph {
    let paragraph = NSMutableParagraphStyle()
    
    let string:String
    
    init(string:String) {
        self.string = string
    }
    
    
    public func line(space:CGFloat) -> Self {
        paragraph.lineSpacing = space
        return self
    }
    
    public func paragraph(space:CGFloat) -> Self {
        paragraph.paragraphSpacing = space
        return self
    }
    
    public func alignment(a:NSTextAlignment) -> Self {
        paragraph.alignment = a
        return self
    }
    
    public func firstLineHead(indent:CGFloat) -> Self {
        paragraph.firstLineHeadIndent = indent
        return self
    }
    
    public func tail(indent:CGFloat) -> Self{
        paragraph.tailIndent = indent
        return self
    }

    public func lineBreak(mode:NSLineBreakMode) -> Self {
        paragraph.lineBreakMode = mode
        return self
    }

    public func minimumLine(height:CGFloat) -> Self {
        paragraph.minimumLineHeight = height
        return self
    }
    
    public func maximumLine(height:CGFloat) -> Self {
        paragraph.maximumLineHeight = height
        return self
    }

    public func baseWriting(direction:NSWritingDirection) -> Self {
        paragraph.baseWritingDirection = direction
        return self
    }

    public func lineHeight(multiple: CGFloat) -> Self {
        paragraph.lineHeightMultiple = multiple
        return self
    }

    public func paragraph(spacingBefore: CGFloat) -> Self {
        paragraph.paragraphSpacingBefore = spacingBefore
        return self
    }

    public func hyphenation(factor: Float) -> Self {
        paragraph.hyphenationFactor = factor
        return self
    }
    
    struct PhVlaue {
        var ph:NSParagraphStyle
        var range:Range<String.Index>
    }
    
    lazy var attributes:[String:PhVlaue] = [:]
    
    public func range(r : Range<String.Index>) -> Void {
        self.attributes["\(r.hashValue)"] = PhVlaue.init(ph: self.paragraph, range: r)
    }
    
    public func full() -> Void {
        let start = self.string.startIndex
        let end   = self.string.endIndex
        let range = start..<end
        self.attributes["\(range.hashValue)"] = PhVlaue.init(ph: self.paragraph, range: range)
    }
}

