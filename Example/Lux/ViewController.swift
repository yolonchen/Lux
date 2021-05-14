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
        
        let str = "这是一个测试字符串呀想要很长很长，能够换行，呵呵呵 \n 这是另一段文本呀，首先换个行吧，嗯嗯嗯嗯嗯"
        let attr = str.lux.makeAttributes { (maker) in
            maker.foregroundColor(color: .orange).full()
//            maker.foregroundColor(color: .yellow).range(r: str.range(of: "yellow")!)
//            maker.foregroundColor(color: .red).range(r: str.range(of: "red")!)
            maker.backgroundColor(color: .cyan).full()
            maker.backgroundColor(color: .blue).at(first: "很")
//            maker.foregroundColor(color: .purple).at(all: "o")
//            maker.backgroundColor(color: .magenta).range(r: str.range(of: "yellow")!)
            maker.ph.firstLineHead(indent: 20).paragraph(space: 20).full()
            
            
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

