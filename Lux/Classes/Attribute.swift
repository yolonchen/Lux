//
//  Attribute.swift
//  Lux
//
//  Created by 陈玉龙 on 2021/4/27.
//

import Foundation

struct Attribute {
    var range:Range<String.Index>
    var key:AttributedKey
}

enum AttributedKey {
    case font(font:UIFont)
    case foregroundColor(color:UIColor)
    case backgroundColor(color:UIColor)
    case ligature(n:NSNumber)
    case kern(f:NSNumber)
    
//    @available(iOS 14.0, *)
//    case tracking(f:Float)
    
    case strikethroughStyle(n:Int)
    case underlineStyle(n:Int)
    case strokeColor(color:UIColor)
    case strokeWidth(f:Float)
    case shadow(s:NSShadow)
    case textEffect(c:String)
    case attachment(m:NSTextAttachment)
    case link(url:URL)
    case baselineOffset(f:Float)
    case underlineColor(color:UIColor)
    case obliqueness(f:NSNumber)
    case expansion(f:Float)
//    case writingDirection(numbers:[])
    case verticalGlyphForm(n:Int)
    
    
    var luxAttributedKey:NSAttributedString.Key {
        switch self {
        case .font(font: _):
            return .font
        case .foregroundColor(color: _):
            return .foregroundColor
        case .backgroundColor(color: _):
            return .backgroundColor
        case .ligature(n: _):
            return .ligature
        case .kern(f: _):
            return .kern
            
        case .strikethroughStyle(n: _):
            return .strikethroughStyle
        case .underlineStyle(n: _):
            return .underlineStyle
        case .strokeColor(color: _):
            return .strokeColor
        case .strokeWidth(f: _):
            return .strokeWidth
        case .shadow(s: _):
            return .shadow
        case .textEffect(c: _):
            return .textEffect
        case .attachment(m: _):
            return .attachment
        case .link(url: _):
            return .link
        case .baselineOffset(f: _):
            return .baselineOffset
        case .underlineColor(color: _):
            return .underlineStyle
        case .obliqueness(f: _):
            return .obliqueness
        case .expansion(f: _):
            return .expansion
        case .verticalGlyphForm(n: _):
            return .verticalGlyphForm
        }
    }
    
    var associatedValue:Any {
        switch self {
        case let .font(font: f):
            return f
        case let .foregroundColor(color: c):
            return c
        case let .backgroundColor(color: c):
            return c
        case let .ligature(n: n):
            return n
        case let .kern(f: f):
            return f
            
        case let .strikethroughStyle(n: n):
            return n
        case let .underlineStyle(n: n):
            return n
        case let .strokeColor(color: c):
            return c
        case let .strokeWidth(f: f):
            return f
        case let .shadow(s: s):
            return s
        case let .textEffect(c: c):
            return c
        case let .attachment(m: m):
            return m
        case let .link(url: url):
            return url
        case let .baselineOffset(f: f):
            return f
        case let .underlineColor(color: c):
            return c
        case let .obliqueness(f: f):
            return f
        case let .expansion(f: f):
            return f
        case let .verticalGlyphForm(n: n):
            return n
        }

    }
    
    var code:Int {
        switch self {
        case .font(font: _):
            return 0
        case .foregroundColor(color: _):
            return 1
        case .backgroundColor(color: _):
            return 2
        case .ligature(n: _):
            return 3
        case .kern(f: _):
            return 4
            
        case .strikethroughStyle(n: _):
            return 5
        case .underlineStyle(n: _):
            return 6
        case .strokeColor(color: _):
            return 7
        case .strokeWidth(f: _):
            return 8
        case .shadow(s: _):
            return 9
        case .textEffect(c: _):
            return 10
        case .attachment(m: _):
            return 11
        case .link(url: _):
            return 12
        case .baselineOffset(f: _):
            return 13
        case .underlineColor(color: _):
            return 14
        case .obliqueness(f: _):
            return 15
        case .expansion(f: _):
            return 16
        case .verticalGlyphForm(n: _):
            return 17
        }
    }
    
}

