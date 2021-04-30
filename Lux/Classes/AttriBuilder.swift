//
//  AttriBuilder.swift
//  LiveDetection
//
//  Created by 陈玉龙 on 2021/4/26.
//

import UIKit

public extension String {
    var lux:AttributesDSL {
        return AttributesDSL.init(string: self)
    }
}



