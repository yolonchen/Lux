//
//  ViewController.swift
//  Lux
//
//  Created by ts-cyl on 04/28/2021.
//  Copyright (c) 2021 ts-cyl. All rights reserved.
//

import UIKit
import Lux
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var str = "dfasdf".lux.makeAttributes { (maker) in
            maker.foregroundColor(color: .red).full()
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

