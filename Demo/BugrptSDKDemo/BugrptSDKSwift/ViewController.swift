//
//  ViewController.swift
//  BugrptSDKSwift
//
//  Created by Netease on 16/3/16.
//  Copyright © 2016年 NetEase. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func testNSException(sender: AnyObject) {
        let array = []
        print(array[1])
    }
    
}

