//
//  AttriBuilder.swift
//  Lux
//
//  Created by 陈玉龙 on 2021/4/26.
//

import UIKit

public extension String {
    var lux:AttributesDSL {
        return AttributesDSL.init(string: self)
    }
}

extension String {
    func luxRanges(of subString:String) -> [Range<String.Index>] {
        
        var start = self.startIndex
        let end = self.endIndex
        
        var ranges:[Range<String.Index>] = []
        
        while let range = self.range(of: subString, range:start..<end ) {
            ranges.append(range)
            start = range.upperBound
        }
        return ranges
    }
}




