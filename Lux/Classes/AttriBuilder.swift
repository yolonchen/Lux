//
//  AttriBuilder.swift
//  LiveDetection
//
//  Created by 陈玉龙 on 2021/4/26.
//

import UIKit

public extension String {
    public var lux:AttributesDSL {
        return AttributesDSL.init(string: self)
    }
}



