//
//  ViewController.swift
//  Lux
//
//  Created by ts-cyl on 04/28/2021.
//  Copyright (c) 2021 ts-cyl. All rights reserved.
//

import UIKit
import Lux
import SnapKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let str = "Core Text provides a low-level programming interface for laying out text and handling fonts. The Core Text layout engine is designed for high performance, ease of use, and close integration with Core Foundation. \nThe text layout API provides high-quality typesetting, including character-to-glyph conversion, with ligatures, kerning, and so on. The complementary Core Text font technology provides automatic font substitution (cascading), font descriptors and collections, easy access to font metrics and glyph data, and many other features."
        let attr = str.lux.makeAttributes { (maker) in
            maker.foregroundColor(color: .orange).full()
//            maker.foregroundColor(color: .yellow).range(r: str.range(of: "yellow")!)
//            maker.foregroundColor(color: .red).range(r: str.range(of: "red")!)
            maker.backgroundColor(color: .cyan).full()
            maker.backgroundColor(color: .blue).strikethroughStyle(style: 1).at(first: "and")
            
//            maker.foregroundColor(color: .purple).at(all: "o")
//            maker.backgroundColor(color: .magenta).range(r: str.range(of: "yellow")!)
            maker.ph.firstLineHead(indent: 20).head(indent: 10).paragraph(space: 20).minimumLine(height: 30).full()
            
            
//            maker.ph.maximumLine(height: 20).full()
//            maker.ph.lineBreak(mode: .byClipping).full()
        }
        
        let label = UILabel.init()
        label.numberOfLines = 0
        label.backgroundColor = .lightGray
        self.view.addSubview(label)
        label.snp.makeConstraints { (maker) in
            maker.centerY.equalToSuperview()
            maker.left.equalToSuperview().offset(50)
            maker.right.equalToSuperview().offset(-50)
        }
        label.attributedText = attr
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

