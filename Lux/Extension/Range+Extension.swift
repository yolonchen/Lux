//
//  Range+Extension.swift
//  ABKit
//
//  Created by 陈玉龙 on 2021/4/27.
//

import Foundation

extension RangeExpression where Bound == String.Index  {
    public func luxRange<S: StringProtocol>(in string: S) -> NSRange {
        .init(self, in: string)
    }
}
