//
//  AttriBuilder.swift
//  LiveDetection
//
//  Created by 陈玉龙 on 2021/4/26.
//

import UIKit

extension String {
    public var ab:AttributesDSL {
        return AttributesDSL.init(string: self)
    }
}



