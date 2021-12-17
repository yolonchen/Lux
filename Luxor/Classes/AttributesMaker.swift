//
//  AttributesMaker.swift
//  Lux
//
//  Created by 陈玉龙 on 2021/4/26.
//

import UIKit.UIColor
import UIKit.UIFont

public class AttributeMaker {
    
    private lazy var attributes:[String:Attribute] = [:]
     
    private let string:String
    init(string:String) {
        self.string = string
    }

    private var attributedKeys:[AttributedKey] = []
    
    public func foregroundColor(color:UIColor) -> Self {
        attributedKeys.append(.foregroundColor(color: color))
        return self
    }
    
    public func font(f : UIFont) -> Self {
        attributedKeys.append(.font(font: f))
        return self
    }
    
    public func backgroundColor(color:UIColor) -> Self {
        attributedKeys.append(.backgroundColor(color: color))
        return self
    }
    
    public func strikethroughStyle(style:Int) -> Self {
        attributedKeys.append(.strikethroughStyle(n: style))
        return self
    }
    
    //???? 我也不知道这是个啥
    public func ligature(n:Int) -> Self {
        attributedKeys.append(.ligature(n: NSNumber.init(value: n)))
        return self
    }
    //字符间距
    public func kern(f:Float) -> Self {
        attributedKeys.append(.kern(f: NSNumber.init(value: f)))
        return self
    }
    
    //倾斜度
    public func obliqueness(f:Float) -> Self {
        attributedKeys.append(.obliqueness(f: NSNumber.init(value: f)))
        return self
    }
    
    lazy var paragraph:LuxParagraph = LuxParagraph.init(string: self.string)
    
//    lazy var attachment:NSTextAttachment = NSTextAttachment.init()
    
    public var ph:LuxParagraph {
        return paragraph
    }
    
    private var keys:[String] = []
    
    public func range(r : Range<String.Index>) -> Void {
        for key in attributedKeys {
            let attribute = Attribute.init(range: r, key: key)
            let key = "\(r.hashValue)_\(key.code)"
            self.attributes[key] = attribute
            keys.append(key)
        }
        attributedKeys.removeAll()
    }
    public func full() -> Void {
        for key in attributedKeys {
            let start = self.string.startIndex
            let end   = self.string.endIndex
            let range = start..<end
            let attribute = Attribute.init(range: range, key: key)
            let key = "\(range.hashValue)_\(key.code)"
            self.attributes[key] = attribute
            keys.append(key)
        }
        attributedKeys.removeAll()
    }
    
    public func at(first string:String) -> Void {
        
        if let range = self.string.range(of: string) {
            for key in attributedKeys {
                let attribute = Attribute.init(range: range, key: key)
                let key = "\(range.hashValue)_\(key.code)"
                self.attributes[key] = attribute
                keys.append(key)
            }
        } else {
            debugPrint("not fount searchSting \(string)")
        }
        attributedKeys.removeAll()
    }
    
    public func at(all string:String) -> Void {
        
        defer {
            attributedKeys.removeAll()
        }
        
        let ranges = self.string.luxRanges(of: string)
        
        if ranges.count == 0 {
            debugPrint("not fount searchSting \(string)")
            
            return
        }
        
        for range in ranges {
            for key in attributedKeys {
                let attribute = Attribute.init(range: range, key: key)
                let key = "\(range.hashValue)_\(key.code)"
                self.attributes[key] = attribute
                keys.append(key)
            }
        }
    }


    fileprivate func attributeString() -> NSAttributedString {
        let attrStr = NSMutableAttributedString.init(string: self.string)
        for key in self.keys {
            if let value = self.attributes[key] {
                let attr:[NSAttributedString.Key:Any] = [value.key.luxAttributedKey : value.key.associatedValue]
                attrStr.addAttributes(attr, range: value.range.luxRange(in: self.string))
            }
        }
        
        for (_ , value) in self.ph.attributes {
            let attr:[NSAttributedString.Key:NSParagraphStyle] = [.paragraphStyle : value.ph]
            attrStr.addAttributes(attr, range: value.range.luxRange(in: self.string))
        }
        
        return attrStr
    }
}

public struct AttributesDSL {
    internal let string:String
    init(string:String) {
        self.string = string
    }
    
    public func makeAttributes(maker:(AttributeMaker) -> Void) -> NSAttributedString {
        let mkr = AttributeMaker.init(string: self.string)
        maker(mkr)
        return mkr.attributeString()
    }
}
