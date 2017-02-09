//
//  ViewController.swift
//  Omikuji_iOS
//
//  Created by Kentaro Miura on 2017/02/09.
//  Copyright © 2017年 Kentaro Miura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fortuneLabel: UILabel!
    
    @IBAction func getFortune(_ sender: Any) {

        //おみくじ（乱数を発生させる）
        let resutls = ["大吉","中吉","小吉","吉","末吉","凶","大凶"]
        let random = arc4random_uniform(UInt32(resutls.count))
        self.fortuneLabel.text = resutls[Int(random)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

